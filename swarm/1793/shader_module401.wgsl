struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: array<u32, 12> = array<u32, 12>(0u, 66815u, 24420u, 45550u, 8551u, 105488u, 14833u, 1u, 12076u, 48924u, 567u, 1007u);

var<private> global2: Struct_4 = Struct_4(Struct_1(0u, 17847u, 12082i), vec4<f32>(-398f, 265f, 596f, -1244f));

var<private> global3: u32;

var<private> global4: Struct_4 = Struct_4(Struct_1(58733u, 0u, 0i), vec4<f32>(-349f, 569f, 661f, 485f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(789f + 985f)), _wgslsmith_div_f32(global4.b.x, 805f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.b.x, 2261f, true))))))));
    var var_1 = ~(_wgslsmith_sub_u32(~global2.a.b << (~u_input.e.x % 32u), 52505u) << (~_wgslsmith_dot_vec3_u32(~vec3<u32>(global4.a.a, 4294967295u, arg_0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 5377u, 0u), vec3<u32>(14600u, 1u, arg_1.a.x))) % 32u));
    global1 = array<u32, 12>();
    var_1 = ~_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~arg_1.a.xy, vec2<u32>(1u, global1[_wgslsmith_index_u32(arg_1.a.x, 12u)])), _wgslsmith_div_u32(~79934u, 1u)), _wgslsmith_mult_u32(1u, 4294967295u));
    global2 = Struct_4(Struct_1(~(~(~u_input.e.x)), firstLeadingBit(global1[_wgslsmith_index_u32(u_input.c, 12u)]), ~reverseBits(1i)), _wgslsmith_f_op_vec4_f32(max(global2.b, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2108f, _wgslsmith_f_op_f32(step(-302f, global4.b.x)), global2.b.x, -1796f))))));
    return reverseBits(_wgslsmith_dot_vec3_i32(firstLeadingBit(~firstTrailingBit(u_input.a)), -vec3<i32>(1i, ~2147483647i, _wgslsmith_dot_vec3_i32(arg_1.c, u_input.a))));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> vec2<bool> {
    let var_0 = Struct_1(global4.a.b, ~select(global4.a.b, arg_1, true) & ~33650u, _wgslsmith_mult_i32(-(~global4.a.c), min(-u_input.d, _wgslsmith_sub_i32(reverseBits(-23510i), func_3(u_input.e, Struct_3(u_input.b.wzw, global2.a, u_input.a))))));
    let var_1 = Struct_1(22512u, ~14869u, _wgslsmith_dot_vec3_i32(vec3<i32>(~global2.a.c, firstLeadingBit(global4.a.c & 1i), -(~var_0.c)), vec3<i32>(~1i, -_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-3958i, 25549i, -11510i)), global2.a.c)));
    global2 = Struct_4(Struct_1(firstLeadingBit(1u), 0u, max(var_0.c, var_1.c)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-640f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(257f, global2.b.x))), -246f, 203f), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.b.x, 560f, global2.b.x, 1256f), _wgslsmith_f_op_vec4_f32(-global2.b)), vec4<f32>(_wgslsmith_f_op_f32(global4.b.x + -1141f), -181f, -1470f, _wgslsmith_f_op_f32(step(-1179f, global2.b.x)))))));
    global1 = array<u32, 12>();
    let var_2 = select(select(!vec2<bool>(global0.x && global0.x, global0.x), vec2<bool>(global0.x, _wgslsmith_f_op_f32(round(255f)) != _wgslsmith_f_op_f32(-arg_0.x)), !select(select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), global0.x), vec2<bool>(false, true), true)), global0.yz, global0.x);
    return select(select(select(!(!vec2<bool>(global0.x, false)), vec2<bool>(true, true), !var_2.x), select(vec2<bool>(false, !var_2.x), !select(global0.zz, global0.zx, vec2<bool>(var_2.x, var_2.x)), global0.x), global0.x), vec2<bool>(global0.x, any(!select(vec4<bool>(var_2.x, false, true, global0.x), vec4<bool>(var_2.x, var_2.x, false, var_2.x), false))), var_2);
}

fn func_1() -> f32 {
    var var_0 = !select(vec2<bool>(true, !(!global0.x)), func_2(global2.b.wzx, _wgslsmith_dot_vec3_u32(u_input.b.ywx, u_input.b.zyx)), func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(920f, global2.b.x, 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.x, global2.b.x, global4.b.x)))), _wgslsmith_dot_vec4_u32(u_input.b, ~u_input.b)));
    var var_1 = -u_input.a.zz;
    var_1 = countOneBits(-_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.zx, u_input.a.yz), ~u_input.a.yx));
    let var_2 = Struct_4(Struct_1(0u, _wgslsmith_div_u32(global2.a.a, _wgslsmith_add_u32(u_input.e.x, 0u)), global2.a.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global4.b * _wgslsmith_f_op_vec4_f32(global4.b + vec4<f32>(-981f, global4.b.x, -1638f, 138f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(842f, 224f, global4.b.x, global2.b.x)), _wgslsmith_f_op_vec4_f32(sign(global2.b)), select(global0.x, true, var_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1017f, global2.b.x, _wgslsmith_f_op_f32(global2.b.x * global4.b.x), _wgslsmith_f_op_f32(min(-343f, global4.b.x))) + global2.b), global0.x)));
    global1 = array<u32, 12>();
    return -1632f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = 574f;
    var var_2 = global2.b;
    var var_3 = (~vec4<u32>(4294967295u, 4294967295u, 1u, 1u) << (select(vec4<u32>(~u_input.b.x, _wgslsmith_div_u32(u_input.e.x, global4.a.a), u_input.b.x, 96811u), firstTrailingBit(u_input.b), true) % vec4<u32>(32u))) << (max(_wgslsmith_clamp_vec4_u32(u_input.b, reverseBits(u_input.b & u_input.b), select(~vec4<u32>(4294967295u, 4294967295u, global1[_wgslsmith_index_u32(1u, 12u)], u_input.b.x), ~u_input.b, !global0.x)), vec4<u32>(~(78462u | u_input.e.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.a.b, global4.a.a, global4.a.b, 31977u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41087u, 12u)], 12u)], 30312u, 0u, global1[_wgslsmith_index_u32(u_input.c, 12u)])), _wgslsmith_div_u32(4294967295u, 39682u)), 0u, ~(~1u))) % vec4<u32>(32u));
    var var_4 = Struct_4(Struct_1(reverseBits(firstTrailingBit(~4294967295u)), ~((8603u << (global4.a.a % 32u)) | (0u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_3.x, 12u)], 12u)] % 32u))), ~(~global2.a.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-103f - _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -331f), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(exp2(global4.b.x)))))));
    let var_5 = -(~_wgslsmith_add_i32(global4.a.c, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, -46579i, 0i), -2147483647i)));
    global4 = Struct_4(global4.a, vec4<f32>(1f, 797f, global2.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(2090f))))))));
    let var_6 = Struct_4(Struct_1(~max(global4.a.b, firstTrailingBit(global2.a.b)), _wgslsmith_mod_u32(u_input.c, min(var_3.x, var_3.x)) ^ var_4.a.a, ~var_4.a.c), vec4<f32>(_wgslsmith_f_op_f32(-845f * 629f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1277f) - global4.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1111f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x)))), -382f));
    let var_7 = vec3<f32>(393f, _wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_4.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5, -33337i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b.x) + _wgslsmith_f_op_f32(floor(647f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_7.x))))), var_6.b);
}

