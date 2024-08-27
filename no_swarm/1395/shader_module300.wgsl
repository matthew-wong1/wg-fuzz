struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(-484f, -911f, 1058f, 1348f, 699f, -311f, -1397f, -483f, -361f, -436f, 1371f, 393f, 316f, 1326f, -282f);

var<private> global1: array<i32, 12>;

var<private> global2: Struct_4 = Struct_4(Struct_2(vec3<bool>(false, false, false), vec4<bool>(false, true, false, true)));

var<private> global3: array<vec2<i32>, 2>;

var<private> global4: array<Struct_1, 14>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    global1 = array<i32, 12>();
    var var_0 = Struct_2(!select(!global2.a.b.xzx, !(!global2.a.b.xwy), global2.a.b.x), !select(select(!global2.a.b, global2.a.b, true), global2.a.b, vec4<bool>(false, true, any(global2.a.a), global1[_wgslsmith_index_u32(13194u, 12u)] < -20110i)));
    global4 = array<Struct_1, 14>();
    global1 = array<i32, 12>();
    var var_1 = global4[_wgslsmith_index_u32(0u, 14u)];
    return reverseBits(global1[_wgslsmith_index_u32(0u << (firstTrailingBit(~122900u) % 32u), 12u)]);
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_div_i32(~(-func_3()), 0i) | global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(9040u, _wgslsmith_dot_vec4_u32(~min(vec4<u32>(4294967295u, 1804u, 6391u, 1u), vec4<u32>(40902u, 136507u, 0u, 50099u)), select(vec4<u32>(1u, 1u, 1u, 1u), min(vec4<u32>(60177u, 28622u, 9910u, 1u), vec4<u32>(10655u, 18877u, 1u, 4294967295u)), global2.a.b))), 12u)];
    var var_1 = arg_0.a;
    let var_2 = Struct_1(arg_0.a.b.x, _wgslsmith_sub_vec4_u32(vec4<u32>(31712u, ~(~17853u), 1u, ~_wgslsmith_mod_u32(1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), firstLeadingBit(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 1i), max(u_input.b, vec2<i32>(global1[_wgslsmith_index_u32(1u, 12u)], u_input.b.x)))));
    var var_3 = 1i;
    let var_4 = ~(~1u);
    return Struct_3(false, 1i);
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = func_2(Struct_4(Struct_2(arg_0.b.zyz, !select(arg_0.b, vec4<bool>(global2.a.a.x, arg_0.a.x, true, global2.a.b.x), vec4<bool>(arg_0.a.x, arg_0.b.x, global2.a.b.x, arg_0.a.x)))));
    var var_1 = Struct_1(true, reverseBits(max(~(~vec4<u32>(0u, 5631u, 41210u, 10576u)), ~(~vec4<u32>(30390u, 94073u, 66908u, 37734u)))), ~global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(~20196u), firstTrailingBit(30106u) ^ 37873u), 2u)]);
    var var_2 = Struct_3(false, 51864i);
    let var_3 = 0i;
    let var_4 = -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, 49460i, var_3, var_2.b), ~vec4<i32>(-2147483647i, 1i, -71337i, -1i), ~vec4<i32>(1i, u_input.b.x, -11230i, u_input.b.x)) << (select(var_1.b, min(select(vec4<u32>(0u, 87504u, 13567u, var_1.b.x), vec4<u32>(63165u, 78626u, var_1.b.x, var_1.b.x), vec4<bool>(false, false, true, var_0.a)), abs(var_1.b)), all(vec3<bool>(global2.a.b.x, false, false))) % vec4<u32>(32u)));
    return Struct_2(!arg_0.b.wxy, select(!vec4<bool>(var_1.b.x <= 61905u, !var_1.a, var_1.a, var_1.a), arg_0.b, var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    global3 = array<vec2<i32>, 2>();
    var var_1 = func_1(global2.a);
    var var_2 = global4[_wgslsmith_index_u32(4294967295u, 14u)];
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(49138u, var_2.b.x), 15u)];
    global0 = array<f32, 15>();
    let var_4 = reverseBits(var_2.b.zww);
    var_3 = -978f;
    var var_5 = countOneBits(vec3<i32>(max(func_3(), -var_2.c.x), _wgslsmith_add_i32(~39806i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, var_2.c.x), global3[_wgslsmith_index_u32(var_4.x, 2u)]), ~vec2<i32>(1i, 2147483647i))), -_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b.x, 0i), _wgslsmith_mult_i32(-23724i, 32206i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global0[_wgslsmith_index_u32(66795u, 15u)], 747f), 1i, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(7156u), var_2.b.x, ~_wgslsmith_add_u32(var_0, var_4.x)), 2u)] ^ u_input.b, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_4.x ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(34797u, var_2.b.x), vec2<u32>(var_4.x, 21269u)) >> (27249u % 32u)), 15u)] * _wgslsmith_f_op_f32(521f * global0[_wgslsmith_index_u32(var_4.x, 15u)])));
}

