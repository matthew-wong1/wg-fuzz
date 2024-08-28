struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<vec3<bool>, 25>;

var<private> global2: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(4294967295u, 4294967295u, 0u, 48385u), vec4<u32>(53082u, 4294967295u, 37375u, 4294967295u), vec4<u32>(4294967295u, 1u, 73223u, 36916u), vec4<u32>(0u, 0u, 4294967295u, 16201u), vec4<u32>(32417u, 119322u, 26951u, 1u), vec4<u32>(1u, 0u, 1813u, 4294967295u), vec4<u32>(55043u, 0u, 2262u, 1u), vec4<u32>(18657u, 0u, 4294967295u, 90717u), vec4<u32>(18729u, 0u, 56905u, 0u), vec4<u32>(0u, 63209u, 27288u, 1u), vec4<u32>(37441u, 1u, 16293u, 0u), vec4<u32>(50661u, 4294967295u, 9188u, 9238u), vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec4<u32>(15602u, 26952u, 13114u, 0u), vec4<u32>(64378u, 37357u, 0u, 4294967295u), vec4<u32>(22838u, 1u, 4294967295u, 4294967295u), vec4<u32>(1u, 88376u, 83365u, 12049u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(19574u, 97916u, 4294967295u, 62712u), vec4<u32>(77597u, 37187u, 4294967295u, 30850u), vec4<u32>(4294967295u, 13794u, 4294967295u, 0u), vec4<u32>(73711u, 68762u, 0u, 20658u), vec4<u32>(1u, 0u, 52156u, 29876u), vec4<u32>(4294967295u, 1u, 1u, 26237u), vec4<u32>(1u, 13501u, 1u, 62599u), vec4<u32>(2978u, 1u, 10410u, 0u), vec4<u32>(7233u, 4096u, 4294967295u, 34857u), vec4<u32>(46701u, 15759u, 1u, 42369u));

var<private> global3: array<Struct_1, 24>;

var<private> global4: array<i32, 23> = array<i32, 23>(0i, 13416i, i32(-2147483648), i32(-2147483648), 4660i, 59437i, 6477i, 14419i, 62305i, 2147483647i, i32(-2147483648), 0i, i32(-2147483648), -1i, -1i, 1i, 1i, -1i, -28492i, 21292i, -8149i, 18553i, 2147483647i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<u32> {
    var var_0 = ~vec2<i32>(-(u_input.a.x << (~global0[_wgslsmith_index_u32(u_input.d, 16u)] % 32u)), u_input.b);
    global0 = array<u32, 16>();
    var var_1 = Struct_1(abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.d), select(vec3<u32>(0u, u_input.c.x, u_input.c.x), vec3<u32>(36859u, 31528u, 1u), true))));
    let var_2 = -_wgslsmith_sub_i32(reverseBits(var_0.x), _wgslsmith_div_i32(-39225i, select(2147483647i, -14413i, true))) >> (~u_input.d % 32u);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(1000f, -645f, -168f, 995f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-507f, -669f, -1209f, -146f))))) * vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, -205f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * _wgslsmith_f_op_f32(abs(-478f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1317f, 586f)), _wgslsmith_f_op_f32(f32(-1f) * -1054f))), _wgslsmith_f_op_f32(f32(-1f) * -1759f))));
    return _wgslsmith_clamp_vec2_u32(~(~(~u_input.c.yy)), abs(var_1.a.zx), vec2<u32>(1u ^ var_1.a.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, _wgslsmith_add_u32(select(1u, u_input.d, false), 24137u)), 16u)]));
}

fn func_2() -> Struct_2 {
    global3 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_mod_vec2_u32(countOneBits(firstLeadingBit(u_input.c.zx)), func_3() << ((~(~u_input.c.wy) << ((vec2<u32>(u_input.c.x, u_input.d) & vec2<u32>(u_input.c.x, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global3 = array<Struct_1, 24>();
    global1 = array<vec3<bool>, 25>();
    let var_1 = global3[_wgslsmith_index_u32(u_input.d, 24u)];
    return Struct_2(!(all(vec3<bool>(true, true, true)) & all(!global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a.x, 16u)], 25u)])), global3[_wgslsmith_index_u32(31511u, 24u)], Struct_1(u_input.c.xyx));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3) -> u32 {
    var var_0 = func_2();
    let var_1 = Struct_2(true, Struct_1(select(~u_input.c.www, var_0.c.a, false)), var_0.c);
    var var_2 = (1u > var_1.b.a.x) | true;
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * -1836f), -720f))), global3[_wgslsmith_index_u32(69506u, 24u)], ~_wgslsmith_dot_vec3_i32(~u_input.a, u_input.a));
    global0 = array<u32, 16>();
    return ~var_0.b.a.x;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_1 {
    global2 = array<vec4<u32>, 28>();
    let var_0 = 1i;
    let var_1 = arg_0;
    let var_2 = func_2();
    var var_3 = -vec4<i32>(-2147483647i, -_wgslsmith_add_i32(5476i, min(-2147483647i, var_1.c)), _wgslsmith_sub_i32(var_1.c, 32656i), -(~(~0i)));
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(25667i, global4[_wgslsmith_index_u32(~9580u, 23u)], -28045i, 0i);
    global1 = array<vec3<bool>, 25>();
    global1 = array<vec3<bool>, 25>();
    global4 = array<i32, 23>();
    let var_1 = func_4(Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(615f, 1000f)))), vec2<f32>(_wgslsmith_f_op_f32(round(1747f)), _wgslsmith_f_op_f32(683f * -276f)), false)), global3[_wgslsmith_index_u32(~(~func_1(vec3<f32>(-248f, 1296f, -516f), Struct_3(vec2<f32>(-1000f, 1288f), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 24u)], -13459i))), 24u)], ~(u_input.a.x << (global0[_wgslsmith_index_u32(0u, 16u)] % 32u)) | ~(var_0.x | 24048i)), Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-209f, -911f) + vec2<f32>(-721f, -1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(866f, -1204f), vec2<f32>(1f, 1f))), Struct_1(vec3<u32>(~u_input.d, func_3().x, select(u_input.d, global0[_wgslsmith_index_u32(1u, 16u)], false))), abs(max(_wgslsmith_div_i32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 23u)], -2147483647i), u_input.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(788f, 897f)) + -718f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1126f, 622f)))), -1238f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1361f, -3965f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    global1 = array<vec3<bool>, 25>();
    let var_2 = vec3<i32>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(abs(1u), 28u)], ~vec4<u32>(9558u, global0[_wgslsmith_index_u32(9930u, 16u)], u_input.c.x, var_1.a.x) ^ _wgslsmith_clamp_vec4_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(39228u, global0[_wgslsmith_index_u32(28085u, 16u)], var_1.a.x), 28u)], vec4<u32>(43494u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], var_1.a.x, 1u) & vec4<u32>(1u, 13564u, 1u, u_input.c.x), ~vec4<u32>(var_1.a.x, 4294967295u, global0[_wgslsmith_index_u32(1u, 16u)], 4294967295u))), 23u)], _wgslsmith_mod_i32(1i, -1i), var_0.x);
    var var_3 = func_2().c;
    let var_4 = select(vec2<i32>(firstTrailingBit(var_2.x) ^ min(u_input.a.x << (17715u % 32u), -9571i), abs(-1i)), reverseBits(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.wz, firstLeadingBit(vec2<i32>(var_0.x, u_input.a.x))), -vec2<i32>(var_2.x, 0i))), false);
    let x = u_input.a;
    s_output = StorageBuffer(~0u, var_0 >> (firstTrailingBit(min(~vec4<u32>(var_3.a.x, var_3.a.x, var_3.a.x, var_3.a.x), u_input.c ^ vec4<u32>(u_input.d, 4294967295u, 0u, var_3.a.x))) % vec4<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(max(reverseBits(4294967295u), 76921u), ~0u), select(vec2<u32>(u_input.d, ~4294967295u), vec2<u32>(47921u, func_4(Struct_3(vec2<f32>(-1504f, 562f), Struct_1(var_1.a), 27136i), Struct_3(vec2<f32>(1000f, -1284f), Struct_1(vec3<u32>(1u, u_input.c.x, 0u)), 45223i), vec4<f32>(-579f, -1447f, -285f, -757f)).a.x), true), vec2<u32>(~var_3.a.x, _wgslsmith_div_u32(var_3.a.x, func_2().b.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -377f), 188f)), firstLeadingBit(select(u_input.a, vec3<i32>(var_4.x, var_0.x, -24348i), true)) ^ vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_2.x, var_0.x), var_0.xwy), 7938i, var_2.x));
}

