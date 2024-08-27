struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_2, 26>;

var<private> global3: u32;

var<private> global4: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(Struct_3(-788f, 4294967295u, vec3<i32>(-15135i, -1i, 1i), Struct_1(true, vec3<bool>(false, false, true)), vec2<bool>(false, true)), i32(-2147483648), Struct_3(-2196f, 0u, vec3<i32>(1i, -1i, 59631i), Struct_1(false, vec3<bool>(false, false, true)), vec2<bool>(false, true)), -424f), Struct_4(Struct_3(-608f, 38323u, vec3<i32>(32964i, 11959i, 35964i), Struct_1(true, vec3<bool>(false, true, true)), vec2<bool>(true, false)), -34620i, Struct_3(-948f, 1u, vec3<i32>(40502i, i32(-2147483648), -66525i), Struct_1(true, vec3<bool>(true, true, true)), vec2<bool>(true, true)), 479f), Struct_4(Struct_3(411f, 74846u, vec3<i32>(-58545i, 0i, 2147483647i), Struct_1(true, vec3<bool>(true, true, true)), vec2<bool>(true, true)), 35421i, Struct_3(646f, 29742u, vec3<i32>(881i, 2147483647i, i32(-2147483648)), Struct_1(true, vec3<bool>(true, false, false)), vec2<bool>(false, true)), -249f), Struct_4(Struct_3(683f, 0u, vec3<i32>(-50156i, -1i, -1i), Struct_1(false, vec3<bool>(true, true, false)), vec2<bool>(false, false)), 1i, Struct_3(-409f, 4294967295u, vec3<i32>(26599i, -7666i, 2147483647i), Struct_1(false, vec3<bool>(true, false, false)), vec2<bool>(true, false)), -1853f), Struct_4(Struct_3(-199f, 4294967295u, vec3<i32>(-1i, -1i, 1i), Struct_1(true, vec3<bool>(false, true, true)), vec2<bool>(true, true)), -7927i, Struct_3(887f, 1u, vec3<i32>(-18128i, 0i, 2147483647i), Struct_1(false, vec3<bool>(true, false, true)), vec2<bool>(false, true)), -1452f), Struct_4(Struct_3(-1000f, 9668u, vec3<i32>(-44435i, -10001i, -6182i), Struct_1(false, vec3<bool>(true, false, true)), vec2<bool>(false, true)), -1i, Struct_3(1389f, 0u, vec3<i32>(-42221i, 30435i, 23981i), Struct_1(true, vec3<bool>(true, true, true)), vec2<bool>(true, true)), -669f), Struct_4(Struct_3(1271f, 1u, vec3<i32>(2147483647i, -21709i, 2147483647i), Struct_1(true, vec3<bool>(false, false, false)), vec2<bool>(true, false)), -1i, Struct_3(1459f, 4294967295u, vec3<i32>(-13267i, -1i, i32(-2147483648)), Struct_1(false, vec3<bool>(false, false, true)), vec2<bool>(false, true)), 258f), Struct_4(Struct_3(-274f, 4294967295u, vec3<i32>(0i, -66137i, -1i), Struct_1(false, vec3<bool>(true, false, true)), vec2<bool>(false, false)), 1i, Struct_3(1395f, 0u, vec3<i32>(29454i, 0i, i32(-2147483648)), Struct_1(false, vec3<bool>(true, false, false)), vec2<bool>(false, true)), -1000f), Struct_4(Struct_3(-1570f, 63369u, vec3<i32>(1i, 17267i, -1i), Struct_1(true, vec3<bool>(false, false, false)), vec2<bool>(true, true)), 22459i, Struct_3(-405f, 1u, vec3<i32>(3479i, 25549i, 2147483647i), Struct_1(false, vec3<bool>(false, false, false)), vec2<bool>(false, false)), 730f), Struct_4(Struct_3(-645f, 0u, vec3<i32>(-1i, 38672i, 39180i), Struct_1(true, vec3<bool>(true, false, false)), vec2<bool>(true, false)), -4212i, Struct_3(1654f, 0u, vec3<i32>(2147483647i, 44916i, 31472i), Struct_1(false, vec3<bool>(false, true, true)), vec2<bool>(true, true)), 112f), Struct_4(Struct_3(1655f, 1u, vec3<i32>(-22315i, -1i, 0i), Struct_1(false, vec3<bool>(true, true, false)), vec2<bool>(false, true)), 13771i, Struct_3(2232f, 0u, vec3<i32>(1i, 23110i, 1i), Struct_1(true, vec3<bool>(false, false, true)), vec2<bool>(false, false)), -542f), Struct_4(Struct_3(556f, 1u, vec3<i32>(-24443i, i32(-2147483648), 2147483647i), Struct_1(true, vec3<bool>(true, true, true)), vec2<bool>(true, true)), 1i, Struct_3(671f, 52276u, vec3<i32>(2147483647i, 0i, i32(-2147483648)), Struct_1(true, vec3<bool>(false, true, true)), vec2<bool>(true, true)), 646f), Struct_4(Struct_3(-979f, 1u, vec3<i32>(29743i, -1i, -2126i), Struct_1(true, vec3<bool>(true, true, true)), vec2<bool>(true, false)), 1i, Struct_3(895f, 1u, vec3<i32>(2147483647i, -11978i, 7692i), Struct_1(true, vec3<bool>(false, false, false)), vec2<bool>(true, false)), -966f), Struct_4(Struct_3(-559f, 0u, vec3<i32>(1i, i32(-2147483648), -35742i), Struct_1(false, vec3<bool>(true, true, false)), vec2<bool>(false, false)), i32(-2147483648), Struct_3(-370f, 4275u, vec3<i32>(i32(-2147483648), 33414i, 0i), Struct_1(false, vec3<bool>(false, true, true)), vec2<bool>(true, false)), 170f), Struct_4(Struct_3(-570f, 33658u, vec3<i32>(2711i, -21980i, 39146i), Struct_1(false, vec3<bool>(true, false, false)), vec2<bool>(false, false)), 16892i, Struct_3(1310f, 50896u, vec3<i32>(1i, 2147483647i, -14303i), Struct_1(true, vec3<bool>(false, false, false)), vec2<bool>(false, false)), -808f), Struct_4(Struct_3(-529f, 21298u, vec3<i32>(-698i, -21343i, 13974i), Struct_1(true, vec3<bool>(true, true, true)), vec2<bool>(true, false)), 0i, Struct_3(1508f, 15518u, vec3<i32>(i32(-2147483648), -59941i, -57330i), Struct_1(false, vec3<bool>(false, true, false)), vec2<bool>(true, true)), -401f), Struct_4(Struct_3(-530f, 5028u, vec3<i32>(2147483647i, 13275i, -6619i), Struct_1(true, vec3<bool>(false, false, true)), vec2<bool>(false, false)), 2147483647i, Struct_3(1000f, 4294967295u, vec3<i32>(-1i, -9562i, -54202i), Struct_1(false, vec3<bool>(false, true, false)), vec2<bool>(true, false)), -128f), Struct_4(Struct_3(267f, 45057u, vec3<i32>(i32(-2147483648), -21148i, 2147483647i), Struct_1(false, vec3<bool>(true, true, true)), vec2<bool>(false, false)), -24935i, Struct_3(2469f, 0u, vec3<i32>(1i, -24906i, -1i), Struct_1(false, vec3<bool>(true, false, false)), vec2<bool>(false, false)), 795f), Struct_4(Struct_3(-774f, 21833u, vec3<i32>(11807i, -11361i, 2147483647i), Struct_1(false, vec3<bool>(true, false, false)), vec2<bool>(true, true)), i32(-2147483648), Struct_3(222f, 1878u, vec3<i32>(i32(-2147483648), -3599i, 28425i), Struct_1(true, vec3<bool>(false, false, true)), vec2<bool>(true, false)), 1576f), Struct_4(Struct_3(1000f, 1833u, vec3<i32>(-3097i, -4207i, -44783i), Struct_1(true, vec3<bool>(true, true, false)), vec2<bool>(false, true)), 47648i, Struct_3(-1727f, 62743u, vec3<i32>(1i, 2147483647i, 48794i), Struct_1(false, vec3<bool>(false, true, false)), vec2<bool>(true, false)), -573f), Struct_4(Struct_3(-290f, 4294967295u, vec3<i32>(31834i, 2147483647i, -18810i), Struct_1(false, vec3<bool>(true, true, false)), vec2<bool>(false, true)), 0i, Struct_3(1275f, 4294967295u, vec3<i32>(14833i, i32(-2147483648), -39101i), Struct_1(false, vec3<bool>(true, true, true)), vec2<bool>(false, false)), -126f), Struct_4(Struct_3(234f, 1u, vec3<i32>(-6518i, 1i, 1603i), Struct_1(true, vec3<bool>(false, true, true)), vec2<bool>(true, false)), -1i, Struct_3(-600f, 1u, vec3<i32>(2147483647i, 37978i, -6859i), Struct_1(false, vec3<bool>(false, true, true)), vec2<bool>(true, false)), 201f), Struct_4(Struct_3(-686f, 12576u, vec3<i32>(i32(-2147483648), -1i, -1i), Struct_1(false, vec3<bool>(false, true, false)), vec2<bool>(true, true)), 26463i, Struct_3(119f, 74042u, vec3<i32>(27042i, 9771i, 43121i), Struct_1(false, vec3<bool>(false, true, true)), vec2<bool>(false, false)), 814f), Struct_4(Struct_3(1238f, 33731u, vec3<i32>(3070i, -13392i, 2147483647i), Struct_1(false, vec3<bool>(false, true, true)), vec2<bool>(false, false)), 0i, Struct_3(-774f, 0u, vec3<i32>(-13014i, i32(-2147483648), 6471i), Struct_1(false, vec3<bool>(true, true, false)), vec2<bool>(true, true)), -135f), Struct_4(Struct_3(-1299f, 34418u, vec3<i32>(-1i, 0i, 14840i), Struct_1(true, vec3<bool>(false, true, false)), vec2<bool>(true, true)), 1i, Struct_3(1486f, 5796u, vec3<i32>(i32(-2147483648), 8954i, i32(-2147483648)), Struct_1(true, vec3<bool>(true, true, true)), vec2<bool>(true, true)), -766f), Struct_4(Struct_3(-1320f, 1u, vec3<i32>(0i, 1i, 2147483647i), Struct_1(false, vec3<bool>(true, true, false)), vec2<bool>(false, false)), -76965i, Struct_3(-729f, 67002u, vec3<i32>(6689i, 0i, 1i), Struct_1(true, vec3<bool>(false, false, false)), vec2<bool>(true, false)), 1000f), Struct_4(Struct_3(2452f, 4294967295u, vec3<i32>(9412i, 56820i, -50854i), Struct_1(true, vec3<bool>(true, false, true)), vec2<bool>(true, true)), -1i, Struct_3(-880f, 30514u, vec3<i32>(-7940i, 2147483647i, -1i), Struct_1(true, vec3<bool>(false, false, false)), vec2<bool>(true, false)), 237f), Struct_4(Struct_3(-532f, 73524u, vec3<i32>(44075i, 0i, 1i), Struct_1(false, vec3<bool>(false, true, false)), vec2<bool>(true, true)), 8149i, Struct_3(682f, 36847u, vec3<i32>(-17281i, -23388i, -60117i), Struct_1(false, vec3<bool>(true, false, false)), vec2<bool>(false, true)), 612f), Struct_4(Struct_3(899f, 0u, vec3<i32>(2147483647i, 0i, -41757i), Struct_1(true, vec3<bool>(true, false, true)), vec2<bool>(true, true)), 2147483647i, Struct_3(-857f, 0u, vec3<i32>(35413i, -1i, -1i), Struct_1(false, vec3<bool>(false, true, false)), vec2<bool>(false, true)), -368f), Struct_4(Struct_3(-173f, 0u, vec3<i32>(0i, 0i, -57845i), Struct_1(false, vec3<bool>(true, true, false)), vec2<bool>(false, true)), -13865i, Struct_3(496f, 52325u, vec3<i32>(1i, 1i, -29738i), Struct_1(true, vec3<bool>(false, true, true)), vec2<bool>(false, false)), 128f), Struct_4(Struct_3(1084f, 12124u, vec3<i32>(59462i, 0i, 23645i), Struct_1(true, vec3<bool>(false, false, false)), vec2<bool>(true, true)), -32776i, Struct_3(-1000f, 20807u, vec3<i32>(34868i, 0i, -26543i), Struct_1(true, vec3<bool>(true, false, true)), vec2<bool>(true, false)), 256f), Struct_4(Struct_3(-233f, 0u, vec3<i32>(0i, 2147483647i, -1i), Struct_1(true, vec3<bool>(false, false, false)), vec2<bool>(true, false)), 0i, Struct_3(181f, 17214u, vec3<i32>(49010i, 40558i, 5621i), Struct_1(false, vec3<bool>(true, true, false)), vec2<bool>(false, true)), -449f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<f32>) -> f32 {
    return 604f;
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = !vec3<bool>(false, ~firstTrailingBit(-1i) < ~1i, !((u_input.a & 1u) > u_input.b.x));
    let var_1 = Struct_1(!(!(!all(vec4<bool>(var_0.x, true, var_0.x, var_0.x)))), !vec3<bool>(var_0.x, true, !select(true, var_0.x, false)));
    global4 = array<Struct_4, 32>();
    var var_2 = var_1;
    global2 = array<Struct_2, 26>();
    return global0[_wgslsmith_index_u32(abs(~(~(~1u))), 31u)];
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(arg_0.x, 26u)];
    global0 = array<Struct_3, 31>();
    var_0 = Struct_2(_wgslsmith_div_i32(global1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(abs(global1.yx), global1.yy), ~(-vec2<i32>(83136i, -33371i)))), _wgslsmith_add_i32(_wgslsmith_mult_i32(global1.x, _wgslsmith_sub_i32(1i, ~var_0.a)), _wgslsmith_sub_i32(~min(global1.x, global1.x), reverseBits(global1.x))));
    global3 = 0u;
    global0 = array<Struct_3, 31>();
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(u_input.b, 1u << (u_input.b.x % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-320f, -258f, 1354f) - vec3<f32>(-1691f, -812f, -1000f)) + vec3<f32>(496f, -238f, -439f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1755f)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0))));
    var var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 31u)];
    var_2 = func_2(u_input.b);
    var var_3 = Struct_4(Struct_3(-734f, 0u >> (firstLeadingBit(~u_input.a) % 32u), -_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -1i, -2147483647i), var_2.c ^ var_2.c), var_2.d, !vec2<bool>(109053u <= var_2.b, var_2.d.a)), _wgslsmith_mult_i32(_wgslsmith_div_i32(~_wgslsmith_add_i32(-45632i, global1.x), global1.x), _wgslsmith_div_i32(_wgslsmith_add_i32(max(var_2.c.x, 33561i), -var_2.c.x), var_2.c.x)), func_2(~(~u_input.b) | ~u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.b, _wgslsmith_add_u32(var_2.b, 18678u), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-403f, var_1, var_2.a))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(sign(666f))))));
    global1 = vec3<i32>(~11847i, _wgslsmith_div_i32(var_3.b, func_3(max(u_input.b.zz, u_input.b.ww) | ~vec2<u32>(u_input.b.x, 4294967295u), func_2(~vec4<u32>(var_3.a.b, 4294967295u, 4294967295u, var_3.c.b)).d, !all(vec3<bool>(var_2.e.x, false, var_2.e.x)))), firstTrailingBit(-firstLeadingBit(abs(var_2.c.x))));
    global2 = array<Struct_2, 26>();
    var var_4 = global2[_wgslsmith_index_u32(0u, 26u)];
    global4 = array<Struct_4, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + var_1), var_0)))), _wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(func_1(vec4<u32>(var_3.a.b, 4294967295u, ~22016u, var_3.c.b), 1u, vec3<f32>(_wgslsmith_div_f32(991f, 757f), 1085f, 1912f)))));
}

