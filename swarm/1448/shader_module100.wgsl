struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false));

var<private> global1: Struct_1 = Struct_1(vec3<u32>(38570u, 0u, 0u));

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global2 = !select(!vec3<bool>(false, true, all(global2.zx)), select(!select(vec3<bool>(false, false, true), vec3<bool>(global2.x, true, false), global2.x), vec3<bool>(all(vec2<bool>(global2.x, global2.x)), any(vec3<bool>(global2.x, true, false)), u_input.b >= -36468i), any(vec4<bool>(false, false, true, true))), !(!(13494u < global1.a.x)));
    let var_0 = min(~1u, 4294967295u);
    var var_1 = var_0;
    let var_2 = ~vec4<u32>(36452u, ~4294967295u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(global1.a.x, 1u, var_0)), ~vec3<u32>(u_input.c, 1u, u_input.d)) & (_wgslsmith_add_u32(arg_0.a.x, var_0) ^ ~1u), ~var_0);
    global0 = array<vec4<bool>, 11>();
    return _wgslsmith_mult_u32(u_input.c, 40535u);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec4<u32>) -> bool {
    global0 = array<vec4<bool>, 11>();
    let var_0 = ~vec3<i32>(_wgslsmith_div_i32(arg_0.x, _wgslsmith_dot_vec4_i32(arg_0, arg_0)), -1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(arg_0.x, arg_0.x), u_input.b << (global1.a.x % 32u)));
    let var_1 = false;
    let var_2 = vec4<u32>(~u_input.c, _wgslsmith_mult_u32(~(~(~arg_3.x)), 0u << (func_3(Struct_1(vec3<u32>(4294967295u, 5247u, arg_3.x))) % 32u)), u_input.d, select(~(~(arg_3.x & global1.a.x)), abs(abs(4294967295u) ^ reverseBits(arg_3.x)), all(select(arg_2.wwy, select(arg_2.wyw, vec3<bool>(arg_2.x, arg_2.x, true), arg_2.zwz), select(arg_2.zwx, arg_2.zww, arg_2.x)))));
    global1 = Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(abs(var_2), vec4<u32>(arg_3.x, u_input.c, var_2.x, 1u)), 4294967295u, _wgslsmith_dot_vec2_u32(global1.a.zx, arg_3.zy) >> (abs(arg_3.x) % 32u)) >> (~vec3<u32>(~91510u, global1.a.x, _wgslsmith_mult_u32(arg_3.x, 0u)) % vec3<u32>(32u)));
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -269f), _wgslsmith_f_op_f32(max(1076f, arg_2))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(489f, arg_1) + vec2<f32>(-1322f, arg_2))))))));
    let var_1 = _wgslsmith_f_op_f32(max(1280f, var_0.a.x));
    let var_2 = ((reverseBits(abs(vec4<u32>(7999u, u_input.e, 0u, 32103u))) << (vec4<u32>(select(u_input.d, global1.a.x, true), abs(global1.a.x), u_input.c, u_input.d) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_u32(reverseBits(max(vec4<u32>(u_input.e, u_input.e, 31098u, 22711u), vec4<u32>(global1.a.x, 50938u, 4294967295u, 1u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, 0u, u_input.c, 21559u), ~vec4<u32>(4294967295u, global1.a.x, global1.a.x, global1.a.x)))) >> (abs(~_wgslsmith_add_vec4_u32(~vec4<u32>(5330u, 0u, 1u, u_input.e), reverseBits(vec4<u32>(23408u, u_input.d, 3557u, global1.a.x)))) % vec4<u32>(32u));
    var var_3 = 1u;
    var var_4 = ~global1.a.x;
    return Struct_2(vec2<f32>(arg_1, var_1));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<i32>) -> Struct_1 {
    global2 = arg_0;
    let var_0 = -1000f;
    let var_1 = false;
    let var_2 = global1.a.xx;
    let var_3 = func_4(!vec3<bool>(var_2.x <= (var_2.x << (4294967295u % 32u)), false, !arg_2), var_0, -153f);
    return Struct_1(global1.a);
}

fn func_6(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    global1 = Struct_1(~(~global1.a));
    let var_0 = arg_2;
    let var_1 = max(1i, -2147483647i);
    var var_2 = !global2.x;
    var_2 = global2.x;
    return arg_2;
}

fn func_1() -> vec3<bool> {
    global1 = func_6(u_input.b, -(vec3<i32>(u_input.b, i32(-1i) * -32380i, ~1i) | _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, -1i), reverseBits(vec3<i32>(-2147483647i, u_input.a, -1i)))), func_5(!(!select(vec3<bool>(true, global2.x, true), vec3<bool>(true, false, global2.x), global2.x)), func_4(vec3<bool>(all(vec3<bool>(true, global2.x, false)), func_2(vec4<i32>(u_input.b, u_input.a, u_input.b, 6318i), Struct_2(vec2<f32>(-1099f, -1000f)), vec4<bool>(true, global2.x, false, false), vec4<u32>(global1.a.x, u_input.c, global1.a.x, 129912u)), global2.x), _wgslsmith_f_op_f32(-410f + _wgslsmith_f_op_f32(step(-1695f, -906f))), 497f), false, vec4<i32>(-44299i, firstTrailingBit(u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -64522i, u_input.b, u_input.a), vec4<i32>(59609i, u_input.a, u_input.b, u_input.b)), _wgslsmith_clamp_i32(~2147483647i, _wgslsmith_sub_i32(-38320i, -1i), u_input.a))));
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_4(select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, global2.x, false), global2.x), _wgslsmith_f_op_f32(abs(-443f)), -1669f).a) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-354f, -340f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1287f, 1336f), vec2<f32>(-272f, 163f))), select(vec2<bool>(global2.x, false), global2.xz, vec2<bool>(global2.x, global2.x)))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(max(var_0.a, var_0.a)));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.a.x, var_1.a.x))) - var_1.a));
    var_0 = func_4(vec3<bool>(all(vec2<bool>(true, func_2(vec4<i32>(0i, 2147483647i, u_input.b, u_input.a), var_1, vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<u32>(global1.a.x, u_input.e, global1.a.x, global1.a.x)))), true, func_2(vec4<i32>(2527i, 43991i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.a, u_input.b, -2147483647i)), -u_input.b), Struct_2(_wgslsmith_f_op_vec2_f32(exp2(var_0.a))), select(!global0[_wgslsmith_index_u32(u_input.d, 11u)], global0[_wgslsmith_index_u32(u_input.c, 11u)], select(vec4<bool>(true, global2.x, true, global2.x), global0[_wgslsmith_index_u32(31668u, 11u)], vec4<bool>(global2.x, true, global2.x, true))), select(vec4<u32>(u_input.c, global1.a.x, 13618u, u_input.c), vec4<u32>(0u, u_input.c, global1.a.x, 10994u), global0[_wgslsmith_index_u32(firstTrailingBit(55833u), 11u)]))), var_1.a.x, var_1.a.x);
    return !select(select(select(!vec3<bool>(true, true, global2.x), !vec3<bool>(global2.x, global2.x, false), u_input.c != u_input.e), vec3<bool>(!global2.x, var_1.a.x == -377f, true), vec3<bool>(global2.x, var_1.a.x != -249f, global2.x)), vec3<bool>(false, global2.x, any(global0[_wgslsmith_index_u32(~1u, 11u)])), select(select(vec3<bool>(global2.x, global2.x, global2.x), select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, false, false), true), true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, global2.x), true), select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(true, true, global2.x), vec3<bool>(true, global2.x, global2.x)), u_input.e >= u_input.d), global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    var var_0 = 1u;
    var_0 = reverseBits(_wgslsmith_add_u32(abs(u_input.e & ~u_input.d), global1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(443f, 137f, global2.x)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1127f)))))), 13085u);
}

