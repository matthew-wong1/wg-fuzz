struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: array<Struct_1, 3>;

var<private> global2: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(false, false, true), vec3<bool>(true, true, true));

var<private> global3: Struct_1;

var<private> global4: array<bool, 5> = array<bool, 5>(false, false, true, false, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = arg_2;
    return 1i;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: u32) -> i32 {
    global3 = Struct_1(true);
    var var_0 = -2147483647i;
    global4 = array<bool, 5>();
    global3 = arg_0;
    global2 = array<vec3<bool>, 2>();
    return _wgslsmith_mult_i32(-2147483647i, -max(_wgslsmith_mult_i32(-48498i, 1i), u_input.b.x) >> (_wgslsmith_add_u32(21002u, ~min(4294967295u, 79642u)) % 32u));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(~(u_input.a.x & -29078i), -u_input.a.x, ~func_2(1498f, Struct_1(true), Struct_1(false)), 2147483647i) << (vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(51185u), firstLeadingBit(4294967295u)), u_input.c.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(2735u, u_input.c.x), 1u, firstTrailingBit(4294967295u)), u_input.c.x) % vec4<u32>(32u)), select(vec4<i32>(-1i, -u_input.b.x, countOneBits(-u_input.b.x), func_3(Struct_1(true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-481f, -270f, 1411f) * vec3<f32>(2503f, 1750f, -117f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1707f, -637f, -2367f), vec3<f32>(403f, -739f, 262f))), ~18057u)), vec4<i32>(abs(34679i), 1i, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.a.x), firstTrailingBit(u_input.b.x)) | (countOneBits(vec4<i32>(-43624i, u_input.a.x, 0i, 36276i)) & select(u_input.a, u_input.a, false)), global3.a));
    global3 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1298f, 1907f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2858f, _wgslsmith_f_op_f32(trunc(119f))))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c, ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.c.x), vec2<u32>(u_input.c.x, 58674u))), u_input.c)), 3u)];
    var var_2 = ~(-vec4<i32>(-(i32(-1i) * -35543i), 1i, u_input.b.x, firstTrailingBit(1i)));
    var var_3 = Struct_1(u_input.b.x == ~(-abs(2147483647i)));
    return Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(557f, -1294f, false)))) != _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(342f + 1000f) - _wgslsmith_f_op_f32(floor(281f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(56818u, 3u)];
    global1 = array<Struct_1, 3>();
    global3 = Struct_1((true & (_wgslsmith_mult_u32(4294967295u, u_input.c.x) > 4294967295u)) && all(!(!global2[_wgslsmith_index_u32(1u, 2u)])));
    var var_1 = func_1(global1[_wgslsmith_index_u32(u_input.c.x, 3u)]);
    let var_2 = _wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(abs(2147483647i), _wgslsmith_mult_i32(func_2(_wgslsmith_f_op_f32(round(280f)), Struct_1(false), func_1(Struct_1(global3.a))), func_2(_wgslsmith_f_op_f32(max(594f, -620f)), func_1(Struct_1(var_1.a)), Struct_1(false)))));
    var var_3 = _wgslsmith_mult_u32(~(1u << (~_wgslsmith_add_u32(u_input.c.x, u_input.c.x) % 32u)), 1u);
    var var_4 = Struct_1(var_0.a);
    let var_5 = func_1(Struct_1((global0.a == false) | !(!global3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(select(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, u_input.c.x, 549u), ~vec3<u32>(u_input.c.x, 0u, 25659u)), vec3<u32>(_wgslsmith_add_u32(u_input.c.x, 1u), ~19322u, u_input.c.x << (u_input.c.x % 32u)), var_4.a)), select(~80363u, countOneBits(104259u), false), _wgslsmith_sub_vec2_i32(min(vec2<i32>(~(-36990i), u_input.a.x), -_wgslsmith_mult_vec2_i32(u_input.b.zy, u_input.b.xy)), vec2<i32>(_wgslsmith_mod_i32(-2147483647i, abs(var_2)), 0i)), u_input.c.x, ~reverseBits(u_input.c));
}

