struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<f32>(1000f, -1670f), 425f), Struct_1(vec2<f32>(-752f, -1000f), -1210f), Struct_1(vec2<f32>(304f, -683f), -1000f), Struct_1(vec2<f32>(-464f, -1000f), 726f), Struct_1(vec2<f32>(-1163f, -962f), 1096f), Struct_1(vec2<f32>(-477f, -1000f), 297f), Struct_1(vec2<f32>(333f, -531f), 1849f), Struct_1(vec2<f32>(544f, 1283f), 146f), Struct_1(vec2<f32>(-1225f, 1513f), -1200f), Struct_1(vec2<f32>(1000f, 415f), 854f), Struct_1(vec2<f32>(1182f, -340f), -1157f), Struct_1(vec2<f32>(-396f, -753f), 1535f), Struct_1(vec2<f32>(1928f, -117f), 1649f), Struct_1(vec2<f32>(-180f, -335f), 2100f), Struct_1(vec2<f32>(104f, 1112f), 1767f), Struct_1(vec2<f32>(-693f, 1941f), 1946f), Struct_1(vec2<f32>(-742f, -1502f), -788f), Struct_1(vec2<f32>(-356f, -159f), 635f), Struct_1(vec2<f32>(-529f, 574f), 127f), Struct_1(vec2<f32>(-974f, 1000f), 319f), Struct_1(vec2<f32>(-599f, -1261f), 587f), Struct_1(vec2<f32>(-351f, -808f), -505f), Struct_1(vec2<f32>(2224f, 163f), -712f), Struct_1(vec2<f32>(-1000f, -317f), 990f), Struct_1(vec2<f32>(1150f, 1000f), 557f), Struct_1(vec2<f32>(-1000f, 802f), 1444f), Struct_1(vec2<f32>(1268f, 770f), 253f));

var<private> global2: array<Struct_1, 7>;

var<private> global3: vec2<u32> = vec2<u32>(0u, 0u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec4<bool> {
    var var_0 = ~vec3<u32>(0u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(31596u, 1u, u_input.b), vec3<u32>(global3.x, global3.x, 1u))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b ^ global3.x, 2076u, select(global3.x, u_input.b, arg_3.x)), select(_wgslsmith_add_vec3_u32(vec3<u32>(21416u, 1u, 4294967295u), vec3<u32>(global3.x, 77213u, 1u)), vec3<u32>(19807u, u_input.b, global3.x), !arg_3.x)));
    let var_1 = arg_2;
    var var_2 = arg_2;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-203f, -2876f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_1.a.x)), 666f))))));
    global0 = array<Struct_1, 15>();
    return arg_3;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>) -> u32 {
    let var_0 = vec3<bool>(arg_1.x, (arg_1.x || all(vec2<bool>(true, true))) == all(func_3(Struct_1(vec2<f32>(432f, 124f), -2055f), 12726i, Struct_1(vec2<f32>(-275f, 905f), 1000f), select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(false, true, true, false), true))), arg_1.x);
    var var_1 = global2[_wgslsmith_index_u32(1u, 7u)];
    global1 = array<Struct_1, 27>();
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, min(40648u, _wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(global3.x, _wgslsmith_sub_u32(1u, u_input.b))))), 15u)];
    global0 = array<Struct_1, 15>();
    return _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, u_input.b), global3.x, ~u_input.b, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(select(arg_0.yyx, vec3<u32>(global3.x, u_input.b, 0u), false), vec3<u32>(arg_0.x, u_input.b, 4294967295u)), 0u)), ~arg_0);
}

fn func_1() -> Struct_1 {
    global3 = vec2<u32>(~(~u_input.b), firstLeadingBit(countOneBits(u_input.b)));
    global1 = array<Struct_1, 27>();
    var var_0 = min(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~firstTrailingBit(vec4<u32>(53753u, global3.x, global3.x, 43048u)), vec4<u32>(abs(0u), u_input.b, ~u_input.b, ~1u)), vec4<u32>(~global3.x, 18515u, abs(global3.x) ^ 79890u, _wgslsmith_div_u32(u_input.b, u_input.b >> (29603u % 32u)))), ~firstTrailingBit(~vec4<u32>(global3.x, global3.x, u_input.b, 17892u)));
    var var_1 = func_2(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, 18488u), vec4<u32>(0u, global3.x, 1u, global3.x)) & vec4<u32>(1928u, _wgslsmith_mult_u32(0u, 60660u), ~global3.x, 4207u), vec3<bool>(true, false, ~u_input.a == abs(u_input.a))) >> (~0u % 32u);
    global1 = array<Struct_1, 27>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(816f - 166f), _wgslsmith_f_op_f32(trunc(-182f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1449f, 1395f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1292f, 304f))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-475f, -111f)) - _wgslsmith_div_vec2_f32(vec2<f32>(1325f, 824f), vec2<f32>(-1594f, -210f))))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -896f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -855f), _wgslsmith_f_op_f32(1166f + 1010f)))))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = (select(vec4<u32>(firstLeadingBit(global3.x), u_input.b >> (59988u % 32u), select(4294967295u, 4294967295u, true), ~0u), vec4<u32>(~4390u, 37812u, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 4294967295u), vec2<u32>(69933u, 1u)), global3.x << (global3.x % 32u)), vec4<bool>(true, all(vec4<bool>(true, false, false, true)), any(vec4<bool>(true, true, false, true)), true)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(~global3.x, u_input.b, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, u_input.b), vec2<u32>(global3.x, 135924u))), vec4<u32>(~1u, ~0u, _wgslsmith_sub_u32(u_input.b, 37598u), 1u)) % vec4<u32>(32u))) ^ vec4<u32>(reverseBits(global3.x), ~4294967295u, 16529u, 17007u);
    global0 = array<Struct_1, 15>();
    let var_1 = arg_0.b;
    global2 = array<Struct_1, 7>();
    let var_2 = true;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(~(~u_input.b) != global3.x));
    global0 = array<Struct_1, 15>();
    global3 = ~(~_wgslsmith_div_vec2_u32(~min(vec2<u32>(56716u, 90835u), vec2<u32>(4294967295u, 104219u)), vec2<u32>(u_input.b & 1u, ~u_input.b)));
    let var_1 = func_4(func_1());
    global2 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_clamp_vec3_i32(-(vec3<i32>(14593i, u_input.a, 0i) ^ vec3<i32>(2147483647i, -1i, u_input.a)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(43267u, u_input.b, 4294967295u), select(vec3<u32>(11915u, 30189u, u_input.b), vec3<u32>(u_input.b, u_input.b, global3.x), false), vec3<u32>(15480u, global3.x, 87257u) << (vec3<u32>(10241u, 37609u, 51848u) % vec3<u32>(32u))) % vec3<u32>(32u)), min(~vec3<i32>(44721i, u_input.a, 1i) << ((vec3<u32>(47751u, 94312u, global3.x) >> (vec3<u32>(1u, u_input.b, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-3360i, -1i, -12589i), vec3<i32>(-13216i, u_input.a, 14276i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(1i, 1i, -1i)))), -(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 3061i, u_input.a), vec3<i32>(u_input.a, u_input.a, -26502i)) << (select(vec3<u32>(u_input.b, 4294967295u, global3.x), vec3<u32>(global3.x, global3.x, 15107u), true) % vec3<u32>(32u)))), reverseBits(~_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, 0i, 1i, 54517i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 1i, -2147483647i, u_input.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b, var_1.a.x, var_1.b, var_1.a.x))), vec4<f32>(var_1.a.x, 1101f, var_1.a.x, -932f)), vec4<f32>(-2381f, 1000f, 129f, var_1.b), any(vec3<bool>(true, true, true))))));
}

