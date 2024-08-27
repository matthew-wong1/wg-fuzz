struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<u32>(26408u, 4294967295u, 46406u), true), Struct_1(vec3<u32>(0u, 108654u, 1u), false), Struct_1(vec3<u32>(0u, 17518u, 63524u), false), Struct_1(vec3<u32>(0u, 31079u, 8487u), true));

var<private> global1: array<i32, 13>;

var<private> global2: bool = false;

var<private> global3: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-1000f, -1540f, 1182f), vec3<f32>(-294f, 806f, 613f), vec3<f32>(-1355f, 1169f, -1000f), vec3<f32>(-1000f, -342f, -1049f), vec3<f32>(1000f, -657f, -452f), vec3<f32>(1132f, -372f, 611f));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: bool) -> f32 {
    global1 = array<i32, 13>();
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    return _wgslsmith_f_op_f32(-1f);
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(156f + 1000f))), 489f)))));
    global0 = array<Struct_1, 4>();
    let var_1 = Struct_2(vec4<i32>(2147483647i, -1i, u_input.a, countOneBits(i32(-1i) * -1i)), Struct_1(min(vec3<u32>(33215u, 4294967295u, ~0u), ~(~u_input.b.yzw)), false));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) + 272f), _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec2_u32(u_input.b.zx, vec2<u32>(var_1.b.a.x, 0u)), Struct_3(Struct_2(var_1.a, var_1.b), -26953i), var_1.b.b))), 1f));
    var_2 = -196f;
    return min(global1[_wgslsmith_index_u32(0u, 13u)], ~(-_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], var_1.a.x), vec3<i32>(u_input.a, 9181i, -1i))));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec3<i32>) -> bool {
    global2 = false;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(438f)), 971f))))) - _wgslsmith_f_op_f32(abs(-416f)));
    global2 = true;
    var var_1 = vec4<i32>(-(i32(-1i) * -(i32(-1i) * -28104i)), _wgslsmith_add_i32(u_input.a, i32(-1i) * -countOneBits(-2147483647i)), -func_2(), -arg_0.x);
    let var_2 = Struct_1(select(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, arg_2.x, 1u), ~(~vec3<u32>(arg_2.x, arg_2.x, arg_2.x))), ~(~(~vec3<u32>(30567u, 1u, 7604u))), select(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, false, arg_1), arg_1), vec3<bool>(arg_1, true, true), select(!vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, true, arg_1), select(vec3<bool>(arg_1, true, true), vec3<bool>(arg_1, false, arg_1), true)))), !arg_1 == false);
    return 1f == _wgslsmith_div_f32(989f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -597f))));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(arg_0.a.x, arg_0.a.x, 68718u ^ arg_0.a.x)), u_input.b.yyy), false && (0u <= reverseBits(_wgslsmith_add_u32(arg_0.a.x, u_input.b.x))));
    var var_1 = vec2<bool>((var_0.b && !(global1[_wgslsmith_index_u32(arg_0.a.x, 13u)] < -2147483647i)) | select(!func_1(vec4<i32>(-1i, 10870i, u_input.a, arg_1), true, vec3<u32>(var_0.a.x, 0u, arg_0.a.x), vec3<i32>(-17150i, 0i, global1[_wgslsmith_index_u32(0u, 13u)])), all(vec3<bool>(false, true, arg_0.b)), !(false && arg_0.b)), true);
    var var_2 = !(!(!(_wgslsmith_mod_u32(29954u, arg_0.a.x) <= ~u_input.b.x)));
    var var_3 = Struct_1(min(_wgslsmith_sub_vec3_u32(min(var_0.a, arg_0.a), arg_0.a), u_input.b.wyz) ^ ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.b.x, arg_0.a.x), _wgslsmith_mod_vec3_u32(var_0.a, vec3<u32>(arg_0.a.x, arg_0.a.x, u_input.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-702f, -1000f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1718f) + _wgslsmith_f_op_f32(select(802f, 1081f, var_0.b)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2258f))));
    var var_4 = ~(countOneBits(_wgslsmith_add_i32(firstTrailingBit(1i), firstLeadingBit(1i))) & global1[_wgslsmith_index_u32(var_3.a.x, 13u)]);
    return 2056f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1777f)), _wgslsmith_f_op_f32(func_4(Struct_1(reverseBits(select(u_input.b.zzw, vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<bool>(false, true, false))), true), ~select(reverseBits(global1[_wgslsmith_index_u32(415u, 13u)]), _wgslsmith_add_i32(u_input.a, global1[_wgslsmith_index_u32(18025u, 13u)]), func_1(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], u_input.a, u_input.a, u_input.a), false, u_input.b.zzx, vec3<i32>(-1i, -1i, global1[_wgslsmith_index_u32(u_input.b.x, 13u)]))))));
    global1 = array<i32, 13>();
    var var_1 = ~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, 30629u, ~u_input.b.x), vec3<u32>(1u, ~0u, firstTrailingBit(u_input.b.x)));
    global2 = !((-1000f > var_0) && true);
    var var_2 = Struct_3(Struct_2(vec4<i32>(1i << (1u % 32u), -1i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, -1i, global1[_wgslsmith_index_u32(12750u, 13u)]), vec4<i32>(u_input.a, -4218i, -1i, u_input.a))), select(u_input.a | u_input.a, _wgslsmith_div_i32(-11401i, global1[_wgslsmith_index_u32(4294967295u, 13u)]), false)), Struct_1(u_input.b.zwx, func_1(vec4<i32>(-39566i, u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], 0i), true, u_input.b.xxw, vec3<i32>(2422i, 0i, global1[_wgslsmith_index_u32(var_1.x, 13u)])) && true)), -36383i);
    var var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1849f)));
}

