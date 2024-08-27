struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<f32, 10> = array<f32, 10>(-222f, 2138f, -104f, 1714f, -575f, 479f, -108f, 228f, 193f, 2239f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> i32 {
    var var_0 = 1i;
    let var_1 = vec3<i32>(firstLeadingBit(u_input.a.x), _wgslsmith_div_i32(u_input.a.x, u_input.a.x), u_input.a.x);
    var var_2 = !(arg_0.c | true);
    var var_3 = vec2<u32>(8167u, arg_0.a);
    let var_4 = arg_0.c;
    return 17430i;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    var var_0 = 4294967295u;
    let var_1 = Struct_2(20574u, Struct_1(!(!arg_1.b.a), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(0u, global0.x), _wgslsmith_sub_u32(~global0.x, ~global0.x)), 10u)]), arg_1.c || true);
    var var_2 = arg_1;
    var var_3 = vec3<f32>(-1000f, 916f, arg_1.b.b);
    var_0 = global0.x;
    return 37815i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(-101f)), _wgslsmith_f_op_f32(step(arg_1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(27588u, 10u)] * arg_1.b.b))))), _wgslsmith_f_op_f32(max(1145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-179f, global1[_wgslsmith_index_u32(7355u, 10u)])) + _wgslsmith_div_f32(2681f, arg_0.b.b))))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.a, 24257u), 10u)]);
    let var_1 = (~_wgslsmith_mult_i32(~(-1i), -u_input.a.x) <= ~_wgslsmith_sub_i32(u_input.a.x >> (4294967295u % 32u), func_3(arg_1.b, arg_0))) == any(!(!(!vec3<bool>(arg_1.b.a.x, arg_0.b.a.x, true))));
    let var_2 = arg_1.b;
    let var_3 = arg_0;
    var var_4 = arg_1;
    return arg_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<u32> {
    let var_0 = Struct_1(vec2<bool>(any(vec4<bool>(all(vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x)), true, any(vec4<bool>(arg_0.a.x, true, arg_0.a.x, true)), arg_1.x <= 78265u)), true), arg_0.b);
    return arg_1;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(arg_2.x, 33113u), 10u)]), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_2.x, arg_2.x), 10u)])));
    let var_1 = Struct_2(arg_2.x, Struct_1(func_2(Struct_2(1u, Struct_1(vec2<bool>(true, true), global1[_wgslsmith_index_u32(arg_2.x, 10u)]), true), Struct_2(abs(global0.x), Struct_1(vec2<bool>(true, true), -959f), true)).a, _wgslsmith_f_op_f32(floor(635f))), (select(func_1(Struct_2(44985u, Struct_1(vec2<bool>(true, false), 2675f), true), -2001f), _wgslsmith_div_i32(2147483647i, -18029i), true) | _wgslsmith_mult_i32(max(-10012i, arg_0.x), u_input.a.x << (83099u % 32u))) >= _wgslsmith_div_i32(_wgslsmith_div_i32(34124i >> (arg_2.x % 32u), u_input.a.x), ~(-2803i)));
    var var_2 = var_1;
    var var_3 = var_1;
    let var_4 = Struct_1(var_2.b.a, 212f);
    return Struct_1(vec2<bool>(!all(!vec4<bool>(var_1.b.a.x, var_3.b.a.x, false, var_2.c)), any(func_2(Struct_2(70901u, var_2.b, var_1.c), Struct_2(arg_2.x, var_1.b, var_1.c)).a)), _wgslsmith_f_op_f32(-var_3.b.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(global0.x, 10u)], 245f, global1[_wgslsmith_index_u32(global0.x, 10u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1238f, 463f, global1[_wgslsmith_index_u32(0u, 10u)]))) - vec3<f32>(_wgslsmith_f_op_f32(907f * global1[_wgslsmith_index_u32(global0.x, 10u)]), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(global0.x, 10u)])), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 10u)], -1000f))))));
    let var_1 = true;
    let var_2 = func_5(~vec4<i32>(-29091i, u_input.a.x, max(u_input.a.x ^ -45606i, func_1(Struct_2(1u, Struct_1(vec2<bool>(var_1, var_1), var_0.x), true), global1[_wgslsmith_index_u32(0u, 10u)])), -2303i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~global0.x, 10u)]))), func_4(func_2(Struct_2(select(42532u, 4294967295u, var_1), Struct_1(vec2<bool>(true, false), 760f), true), Struct_2(global0.x, Struct_1(vec2<bool>(var_1, false), var_0.x), true)), select(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global0.x) << (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)), ~vec2<u32>(0u, 42475u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 23737u) & vec2<u32>(0u, global0.x), ~vec2<u32>(5231u, 34545u)), vec2<bool>(true, true))));
    let var_3 = !select(select(vec4<bool>(var_1, !var_2.a.x, true, all(vec3<bool>(var_1, true, false))), !(!vec4<bool>(true, var_1, false, var_2.a.x)), !var_2.a.x), !vec4<bool>(false, true, true, -1046f == var_0.x), !func_2(Struct_2(5370u, Struct_1(var_2.a, global1[_wgslsmith_index_u32(1u, 10u)]), var_2.a.x), Struct_2(38811u, var_2, var_1)).a.x);
    var var_4 = ~_wgslsmith_add_u32(4294967295u, func_4(var_2, vec2<u32>(global0.x, 28300u) ^ vec2<u32>(global0.x, global0.x)).x ^ 4294967295u);
    var var_5 = -func_1(Struct_2(4294967295u, func_5(vec4<i32>(1i, -31597i, u_input.a.x, -21228i), _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global0.x, 10u)], var_0.x), var_0.zx), ~vec2<u32>(0u, global0.x)), func_5(vec4<i32>(-1i, 31532i, u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1284f, 1338f)), vec2<u32>(global0.x, global0.x)).a.x), global1[_wgslsmith_index_u32(~abs(abs(44824u)), 10u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x)))), global0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, var_0.x, var_0.x, 1000f) - vec4<f32>(var_0.x, 225f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 10u)], var_2.b, 778f, -1383f) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 903f, -511f, 1000f), vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 10u)], var_2.b, 983f, -2474f)))) * vec4<f32>(699f, global1[_wgslsmith_index_u32(42236u, 10u)], _wgslsmith_f_op_f32(min(var_2.b, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -419f)))), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(func_4(Struct_1(vec2<bool>(true, var_1), global1[_wgslsmith_index_u32(46836u, 10u)]), vec2<u32>(global0.x, global0.x)).x, global0.x ^ global0.x, 8403u, ~94994u), abs(vec4<u32>(17920u, global0.x, global0.x, 1u) ^ vec4<u32>(0u, global0.x, 15887u, global0.x))), vec4<u32>(~firstLeadingBit(0u), ~global0.x, global0.x, min(global0.x, global0.x)), vec4<u32>(20889u, ~global0.x, 1u, global0.x | global0.x) << (vec4<u32>(abs(67523u), ~global0.x, global0.x ^ 30660u, 50705u) % vec4<u32>(32u))));
}

