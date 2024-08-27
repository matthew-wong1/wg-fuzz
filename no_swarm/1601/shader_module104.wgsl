struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
    c: Struct_2,
    d: Struct_3,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> i32 {
    var var_0 = 4294967295u;
    var var_1 = 33595i;
    let var_2 = ~vec4<u32>(~112452u, 1u, 38775u, 4294967295u);
    let var_3 = var_2;
    var_0 = 0u;
    return arg_0.d;
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    return Struct_1(countOneBits(vec4<i32>(u_input.a.x, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, u_input.a.x, -1i), _wgslsmith_clamp_i32(1i, func_3(Struct_2(vec4<bool>(true, false, false, false), false, 1004f, u_input.a.x, -1334f), vec2<u32>(0u, 1u)), ~u_input.a.x), ~(i32(-1i) * -30574i))), 333f);
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b, 639f))) - vec2<f32>(-520f, -485f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-551f, 1000f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b, var_0.b), vec2<f32>(859f, var_0.b), vec2<bool>(false, true)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -469f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) - vec2<f32>(var_0.b, var_0.b)))))));
    var var_2 = Struct_3(_wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(4294967295u, 1u), 1u, 1u, abs(40656u)), _wgslsmith_sub_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(19176u, 4294967295u, 66199u, 0u), vec4<u32>(1u, 0u, 45030u, 13429u)), ~vec4<u32>(2544u, 0u, 25470u, 43166u), true), vec4<u32>(1u, ~12396u, ~7582u, ~4134u)), ~(~vec4<u32>(4294967295u, 20662u, 85370u, 0u)) & ~firstTrailingBit(vec4<u32>(4294967295u, 1u, 16225u, 65043u))), u_input.a.x);
    var var_3 = Struct_2(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), _wgslsmith_add_i32(var_0.a.x, var_2.b) < -19904i), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), var_2.a.x == 4294967295u), true)), var_1.x, var_0.a.x, -437f);
    var var_4 = Struct_4(global0[_wgslsmith_index_u32(~(~var_2.a.x << (~_wgslsmith_mod_u32(4294967295u, 10881u) % 32u)), 26u)], Struct_3(vec4<u32>(_wgslsmith_sub_u32(var_2.a.x, _wgslsmith_clamp_u32(var_2.a.x, var_2.a.x, 3407u)), 1u, ~4294967295u, var_2.a.x), min(abs(~(-51510i)), ~func_3(Struct_2(var_3.a, var_3.b, var_1.x, var_0.a.x, var_3.e), vec2<u32>(4294967295u, var_2.a.x)))), var_2.a.zwy);
    var var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(1284f, var_3.e)), _wgslsmith_f_op_f32(-var_3.e), func_2().b, _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-602f, var_0.b, -309f, 559f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-112f + 644f), 1149f)), var_0.b, func_2().b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1516f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.c, var_1.x, var_1.x, 123f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, var_3.c, -268f, -195f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~min(var_2.a.x ^ ~15020u, 4294967295u), firstTrailingBit(select(var_4.a.a.x, var_4.c.x, var_3.a.x)));
}

