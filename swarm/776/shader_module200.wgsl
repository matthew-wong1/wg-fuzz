struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16>;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true));

var<private> global2: array<bool, 29>;

var<private> global3: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<f32> {
    let var_0 = global2[_wgslsmith_index_u32(~(~u_input.a & ~u_input.a) >> (u_input.a % 32u), 29u)];
    let var_1 = reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(5374u, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 50635u), vec2<u32>(1u, 52152u))) >> (vec2<u32>(~0u, u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.a, _wgslsmith_clamp_u32(reverseBits(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 17574u, 67879u), vec3<u32>(0u, u_input.a, 0u)), 1u << (u_input.a % 32u)))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(180f))), -673f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1766f + -104f))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>) -> vec3<u32> {
    let var_0 = global1[_wgslsmith_index_u32(0u, 29u)];
    global3 = _wgslsmith_sub_i32(select(~(i32(-1i) * -4987i), u_input.b, true), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-(i32(-1i) * -1i), 1i), -arg_1.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(603f, -546f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * vec2<f32>(-281f, 1000f)) - vec2<f32>(_wgslsmith_f_op_f32(-1000f + 541f), _wgslsmith_div_f32(278f, -416f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1167f, 232f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1838f, -348f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(297f, _wgslsmith_f_op_f32(ceil(1000f))))));
    let var_2 = !(arg_1.x != select(_wgslsmith_mult_i32(-34082i, -19496i) & max(0i, arg_1.x), i32(-1i) * -u_input.b, !(!global2[_wgslsmith_index_u32(u_input.a, 29u)])));
    let var_3 = global1[_wgslsmith_index_u32(u_input.a, 29u)];
    return _wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(max(u_input.a, 1u)), u_input.a, u_input.a), ~_wgslsmith_mod_vec3_u32(~(vec3<u32>(5465u, 79485u, 1u) | vec3<u32>(u_input.a, 4294967295u, u_input.a)), vec3<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a), u_input.a)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: i32) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(3109u >> ((u_input.a << (4294967295u % 32u)) % 32u), _wgslsmith_mult_u32(~(arg_1.x | u_input.a), ~_wgslsmith_dot_vec3_u32(func_2(vec4<i32>(u_input.b, arg_3, u_input.b, -3953i), vec4<i32>(-9488i, -9016i, 2147483647i, arg_3)), vec3<u32>(u_input.a, arg_1.x, arg_1.x)))), 29u)];
    let var_1 = select(~(vec3<u32>(arg_1.x, arg_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(34735u, 47153u), arg_1)) >> (vec3<u32>(u_input.a, ~arg_1.x, arg_1.x) % vec3<u32>(32u))), ~countOneBits(select(vec3<u32>(4294967295u, arg_1.x, 0u), ~vec3<u32>(17058u, 27306u, 0u), var_0.a || var_0.a)), _wgslsmith_add_i32(-1i, u_input.b) >= -44018i);
    global3 = -25103i;
    let var_2 = Struct_1(18377i | firstLeadingBit(firstTrailingBit(_wgslsmith_div_i32(-26927i, arg_3))), ~(arg_1.x << (arg_1.x % 32u)));
    global0 = array<Struct_3, 16>();
    return 1u;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = true;
    global0 = array<Struct_3, 16>();
    var var_1 = -34290i;
    return select(select(select(vec2<bool>(arg_0.b.a, any(vec2<bool>(true, arg_3.a))), select(vec2<bool>(arg_0.b.a, false), vec2<bool>(true, true), arg_3.a), vec2<bool>(false, arg_3.a)), select(select(vec2<bool>(arg_3.a, true), select(vec2<bool>(true, var_0), vec2<bool>(arg_3.a, arg_3.a), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 29u)], arg_3.a)), global2[_wgslsmith_index_u32(~arg_1.x, 29u)]), !select(vec2<bool>(arg_0.b.a, arg_0.b.a), vec2<bool>(false, false), false), !(!vec2<bool>(arg_0.b.a, arg_0.b.a))), select(vec2<bool>(u_input.b < arg_2, global2[_wgslsmith_index_u32(1u, 29u)]), select(select(vec2<bool>(true, arg_0.b.a), vec2<bool>(true, arg_3.a), false), select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 29u)], false), vec2<bool>(var_0, true), vec2<bool>(true, true)), vec2<bool>(false, false)), !var_0)), select(select(select(vec2<bool>(true, true), select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 29u)], arg_0.b.a), vec2<bool>(global2[_wgslsmith_index_u32(arg_1.x, 29u)], global2[_wgslsmith_index_u32(0u, 29u)]), vec2<bool>(var_0, arg_3.a)), true), select(vec2<bool>(true, true), !vec2<bool>(true, global2[_wgslsmith_index_u32(arg_1.x, 29u)]), vec2<bool>(true, arg_3.a)), true), select(vec2<bool>(true, arg_3.a), !(!vec2<bool>(var_0, true)), vec2<bool>(true, arg_0.b.a)), true), vec2<bool>(true, any(select(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.c, 29u)], arg_0.b.a, true, false), vec4<bool>(var_0, true, var_0, arg_0.b.a), select(vec4<bool>(var_0, arg_3.a, arg_3.a, false), vec4<bool>(false, global2[_wgslsmith_index_u32(arg_0.d, 29u)], arg_3.a, arg_0.b.a), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 16>();
    let var_0 = 266f;
    global3 = -u_input.b;
    let var_1 = vec4<i32>(24144i, min(_wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(1i, -30435i, 22890i, -1i)), -(vec4<i32>(15114i, -2147483647i, -4120i, u_input.b) & vec4<i32>(47396i, -2147483647i, -22531i, 26666i))), 0i), u_input.b, -1i);
    let var_2 = func_4(global0[_wgslsmith_index_u32(u_input.a, 16u)], vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a))) << (~u_input.a % 32u), 17598u, func_1(select(!vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a, 29u)]), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 29u)], global2[_wgslsmith_index_u32(u_input.a, 29u)], false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 29u)], false, true)), ~max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-254f, var_0)))), ~1i)), countOneBits(var_1.x), global1[_wgslsmith_index_u32(0u, 29u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(vec2<u32>(u_input.a, u_input.a), abs(vec2<u32>(u_input.a, 51214u)))), 1u, ~(-2147483647i));
}

