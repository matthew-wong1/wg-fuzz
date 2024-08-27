struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true));

var<private> global1: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(-1i, -1414i, 0i, i32(-2147483648)), vec4<i32>(-1i, -71079i, 25121i, -4517i), vec4<i32>(60483i, 14639i, -89204i, -1i), vec4<i32>(53785i, -38729i, -17507i, 73030i), vec4<i32>(i32(-2147483648), -26868i, -49549i, 1i), vec4<i32>(2147483647i, -29243i, -1i, -13696i), vec4<i32>(58167i, -36168i, 1i, i32(-2147483648)), vec4<i32>(-1i, 47177i, 4413i, 0i), vec4<i32>(0i, i32(-2147483648), 0i, -23353i), vec4<i32>(68038i, -7969i, 1i, -20705i), vec4<i32>(2147483647i, 14003i, 1i, 0i), vec4<i32>(-1i, 0i, i32(-2147483648), -1i));

var<private> global2: array<u32, 7> = array<u32, 7>(0u, 41851u, 76474u, 0u, 44470u, 24008u, 1u);

var<private> global3: array<f32, 7>;

var<private> global4: Struct_2 = Struct_2(Struct_1(true, 1i), 26740u, vec3<u32>(0u, 53576u, 46234u), vec3<bool>(true, true, true), -1i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(_wgslsmith_add_i32(u_input.a.x, -arg_2), -14549i, 31057i)), vec3<i32>(((arg_0 & -17041i) >> (_wgslsmith_div_u32(81089u, u_input.d) % 32u)) ^ -arg_1.x, 1i, ~arg_0), ~(~vec3<i32>(u_input.c, _wgslsmith_dot_vec3_i32(u_input.a.xyy, vec3<i32>(global4.e, global4.a.b, global4.e)), arg_1.x)));
    global3 = array<f32, 7>();
    global3 = array<f32, 7>();
    var var_1 = Struct_1(!global4.d.x, ((~10010i | (var_0.x >> (global4.b % 32u))) | 0i) ^ firstTrailingBit(var_0.x));
    var_0 = u_input.a.xzw;
    return global4.c.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> i32 {
    global3 = array<f32, 7>();
    var var_0 = vec4<u32>(33396u, max(select(1u, 1u, arg_1), 18317u), 6983u, global2[_wgslsmith_index_u32(~abs(func_2(arg_3.a.b, min(vec2<i32>(2147483647i, -28232i), vec2<i32>(-2147483647i, -1i)), arg_3.a.b)), 7u)]);
    let var_1 = false;
    let var_2 = 73480u;
    global0 = array<vec3<bool>, 26>();
    return 33100i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(~42284u, u_input.b);
    let var_1 = global4.c.zx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-2147483647i, ~func_1(vec3<u32>(var_1.x, 0u, global4.b), false, ~var_0, Struct_2(global4.a, global4.c.x, vec3<u32>(46882u, global2[_wgslsmith_index_u32(35362u, 7u)], 4294967295u), vec3<bool>(false, global4.a.a, false), -8508i))));
}

