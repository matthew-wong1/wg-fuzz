struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(1u, 1u), vec2<u32>(30935u, 79505u), vec2<u32>(20567u, 38022u), vec2<u32>(13031u, 41592u), vec2<u32>(55717u, 4294967295u), vec2<u32>(16503u, 1u), vec2<u32>(0u, 34083u), vec2<u32>(16840u, 4776u), vec2<u32>(59805u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u));

var<private> global1: vec4<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = true;
    global0 = array<vec2<u32>, 11>();
    var var_1 = 1f;
    var var_2 = select(min(~vec3<i32>(_wgslsmith_mult_i32(-35144i, u_input.a.x), u_input.a.x, 13119i >> (u_input.b.x % 32u)), max(vec3<i32>(-1i) * -vec3<i32>(14870i, -5865i, global1.x), max(reverseBits(vec3<i32>(-54051i, 2147483647i, global1.x)), ~vec3<i32>(global1.x, global1.x, 2147483647i)))), firstLeadingBit(vec3<i32>(abs(global1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global1.x, 0i), _wgslsmith_mod_vec3_i32(global1.wzz, vec3<i32>(u_input.a.x, -1i, -45059i))), u_input.a.x)), true);
    let var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(64330u, u_input.b.x), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x) & u_input.b, vec2<u32>(0u, 764u)), abs(vec2<u32>(u_input.b.x, 0u)), _wgslsmith_mult_vec2_u32(~u_input.b, global0[_wgslsmith_index_u32(u_input.b.x, 11u)] | u_input.b)));
    return select(vec4<bool>(true, any(vec3<bool>(false, true, true)), true, !(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, 29011i), global1.xzw) != -global1.x)), select(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true)), select(vec4<bool>(true, all(vec2<bool>(false, true)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true), false);
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    var var_0 = Struct_2(u_input.a.x >> (select(abs(u_input.b.x), _wgslsmith_mult_u32(_wgslsmith_mult_u32(3287u, u_input.b.x), 1u), true) % 32u), Struct_1(u_input.b.x ^ u_input.b.x), Struct_1(u_input.b.x), Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b.x, 25718u), vec2<u32>(7553u, 24624u) << (u_input.b % vec2<u32>(32u))), ~firstTrailingBit(u_input.b))), 1i);
    var var_1 = ~reverseBits(var_0.e);
    let var_2 = Struct_2(_wgslsmith_sub_i32(var_0.a, _wgslsmith_add_i32((27658i | var_0.e) >> (var_0.c.a % 32u), (i32(-1i) * -1i) & _wgslsmith_div_i32(512i, var_0.e))), Struct_1(1u), var_0.d, Struct_1(var_0.d.a), var_0.e);
    let var_3 = select(!func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-152f + -446f), 424f)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec2<bool>(true, true)), select(all(vec2<bool>(false, false)), true, all(vec3<bool>(false, false, true))), false), !select(func_3(arg_0.x), vec4<bool>(true, true, true, true), func_3(2561f).x)), !(!vec4<bool>(true, all(vec4<bool>(true, false, false, false)), false, true)));
    var_0 = var_2;
    return 0i;
}

fn func_1() -> Struct_1 {
    global1 = vec4<i32>(_wgslsmith_div_i32(-global1.x, -1i), 1i, firstTrailingBit(max(~u_input.a.x, func_2(_wgslsmith_div_vec2_f32(vec2<f32>(-398f, 338f), vec2<f32>(-517f, 1057f))))), _wgslsmith_dot_vec3_i32(global1.xxw, -abs(abs(vec3<i32>(-15704i, 2147483647i, global1.x)))));
    let var_0 = _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.a.x, 11793i), u_input.a) | global1.zz, ~_wgslsmith_clamp_vec2_i32(global1.ww, vec2<i32>(global1.x, global1.x), global1.wx)), max(u_input.a.x, -(~33034i)));
    let var_1 = Struct_2(countOneBits(43768i), Struct_1(u_input.b.x), Struct_1(firstLeadingBit(~2391u << (~u_input.b.x % 32u))), Struct_1(1u), _wgslsmith_mod_i32(-49026i, 1i));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -386f));
    let var_3 = !vec2<bool>(true, any(vec4<bool>(select(true, true, true), true, false, true)));
    return Struct_1(_wgslsmith_mod_u32(27117u >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, 0u)) % 32u), ~max(u_input.b.x, _wgslsmith_add_u32(1u, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_2(~global1.x, func_1(), Struct_1(u_input.b.x), Struct_1(var_0.a), _wgslsmith_mod_i32(firstLeadingBit(1i), ~(-9314i)) >> (select(~max(var_0.a, 4294967295u), var_0.a, true) % 32u));
    let var_2 = Struct_1(u_input.b.x);
    var var_3 = var_1.c;
    let var_4 = ~(~(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_2.a, 0u), vec3<u32>(4294967295u, var_3.a, var_0.a)) ^ ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, 19286u), vec3<u32>(2875u, 74845u, var_0.a), vec3<u32>(4294967295u, 1u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(var_0.a, _wgslsmith_div_u32(~u_input.b.x, 41004u)));
}

