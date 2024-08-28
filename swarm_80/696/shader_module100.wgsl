struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 16>;

var<private> global2: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false));

var<private> global3: array<Struct_1, 11>;

var<private> global4: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_1(vec3<f32>(-249f, -527f, -2010f))), Struct_3(Struct_1(vec3<f32>(741f, -983f, -1781f))), Struct_3(Struct_1(vec3<f32>(-256f, -707f, 563f))), Struct_3(Struct_1(vec3<f32>(-969f, -908f, -327f))), Struct_3(Struct_1(vec3<f32>(457f, -536f, 396f))), Struct_3(Struct_1(vec3<f32>(-1045f, -1597f, -2625f))), Struct_3(Struct_1(vec3<f32>(-1023f, 1140f, 1016f))), Struct_3(Struct_1(vec3<f32>(819f, -872f, 1000f))), Struct_3(Struct_1(vec3<f32>(1472f, 1371f, -752f))), Struct_3(Struct_1(vec3<f32>(1439f, -1181f, 1000f))), Struct_3(Struct_1(vec3<f32>(700f, 2319f, 766f))), Struct_3(Struct_1(vec3<f32>(1490f, 564f, 550f))), Struct_3(Struct_1(vec3<f32>(-632f, 390f, -802f))), Struct_3(Struct_1(vec3<f32>(-178f, 1339f, -553f))), Struct_3(Struct_1(vec3<f32>(1000f, 1586f, -451f))), Struct_3(Struct_1(vec3<f32>(1855f, 1624f, -1243f))), Struct_3(Struct_1(vec3<f32>(-318f, -104f, 542f))), Struct_3(Struct_1(vec3<f32>(215f, 1935f, 898f))), Struct_3(Struct_1(vec3<f32>(-1174f, 618f, -326f))), Struct_3(Struct_1(vec3<f32>(413f, -964f, 153f))), Struct_3(Struct_1(vec3<f32>(-1205f, -1344f, 1081f))), Struct_3(Struct_1(vec3<f32>(-112f, 518f, -1574f))), Struct_3(Struct_1(vec3<f32>(-290f, -1118f, 631f))), Struct_3(Struct_1(vec3<f32>(-352f, -1072f, 255f))), Struct_3(Struct_1(vec3<f32>(280f, -1569f, 157f))));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> f32 {
    global0 = ~56784u;
    global2 = array<vec4<bool>, 21>();
    global4 = array<Struct_3, 25>();
    var var_0 = _wgslsmith_f_op_f32(step(883f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(627f)) - _wgslsmith_f_op_f32(sign(1392f))) + _wgslsmith_f_op_f32(-1842f - _wgslsmith_f_op_f32(-387f * -610f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-138f, -640f)))));
    global4 = array<Struct_3, 25>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>) -> vec3<i32> {
    var var_0 = !(!(!any(!vec3<bool>(false, arg_0, arg_0))));
    global2 = array<vec4<bool>, 21>();
    var var_1 = select(true, all(vec2<bool>(true, true)), arg_0 || true);
    var_0 = arg_0;
    var var_2 = Struct_4(~(~vec4<u32>(firstTrailingBit(4087u), 0u | u_input.a, countOneBits(27598u), 1u)), global4[_wgslsmith_index_u32(u_input.a, 25u)], _wgslsmith_sub_vec3_u32(~(vec3<u32>(u_input.c.x, 6532u, u_input.c.x) ^ vec3<u32>(92827u, 81u, 4294967295u)), max(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.a), vec3<u32>(0u, 62870u, 23280u)), reverseBits(vec3<u32>(u_input.c.x, 58528u, u_input.a)))) << (vec3<u32>(u_input.a, u_input.a, 28143u) % vec3<u32>(32u)));
    return -vec3<i32>(reverseBits(-countOneBits(u_input.d.x)), -17416i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, ~(-36563i)), u_input.d.x, u_input.d.x));
}

fn func_2() -> u32 {
    global0 = 1u;
    global4 = array<Struct_3, 25>();
    global0 = firstLeadingBit(~4294967295u);
    let var_0 = firstLeadingBit(func_4(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1664f, -2232f), _wgslsmith_div_f32(-927f, 216f), _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(4294967295u, 21u)], false))))));
    var var_1 = !any(select(vec3<bool>(true, any(vec2<bool>(true, false)), true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), any(global2[_wgslsmith_index_u32(u_input.a, 21u)])), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), true)));
    return ~u_input.b;
}

fn func_5(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_3) -> u32 {
    global3 = array<Struct_1, 11>();
    let var_0 = ~abs(min(u_input.d, vec2<i32>(~arg_1, ~arg_1)));
    let var_1 = false;
    global1 = array<vec4<i32>, 16>();
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_2.a.a.x)), arg_2.a.a.x))));
    return _wgslsmith_mod_u32(arg_0.x, ~abs(~0u ^ ~u_input.c.x));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> vec4<u32> {
    let var_0 = firstLeadingBit(~select(vec3<i32>(1i, u_input.d.x, ~2147483647i), _wgslsmith_mult_vec3_i32(-vec3<i32>(-20033i, u_input.d.x, u_input.d.x), vec3<i32>(-15539i, u_input.d.x, -2147483647i)), !vec3<bool>(false, false, arg_0)));
    var var_1 = global1[_wgslsmith_index_u32(~(~(~u_input.a)), 16u)] >> ((_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.c.x, arg_1.x, 0u, 1u), vec4<u32>(0u, u_input.c.x, 5967u, 4294967295u), true) & vec4<u32>(59023u, arg_1.x, arg_1.x, 4294967295u), vec4<u32>(u_input.a, ~u_input.a, ~arg_1.x, ~u_input.b), abs(~vec4<u32>(u_input.c.x, u_input.c.x, 46935u, u_input.a))) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x >> (4294967295u % 32u), u_input.a << (u_input.c.x % 32u), 0u, ~u_input.a), ~vec4<u32>(10275u, u_input.b, arg_1.x, u_input.c.x) ^ ~vec4<u32>(28999u, arg_1.x, u_input.b, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(49193i, var_0.x, 1i, ~u_input.d.x), vec4<i32>(firstLeadingBit(3362i << (select(u_input.a, arg_1.x, true) % 32u)), var_0.x, -1i, firstTrailingBit(5016i)));
    global1 = array<vec4<i32>, 16>();
    global0 = func_5((firstTrailingBit(vec4<u32>(u_input.c.x, u_input.a, u_input.c.x, u_input.b) ^ vec4<u32>(49876u, 13463u, arg_1.x, arg_1.x)) << (vec4<u32>(func_2(), u_input.c.x, arg_1.x, ~arg_1.x) % vec4<u32>(32u))) ^ min(vec4<u32>(min(4294967295u, 12026u), 0u, _wgslsmith_clamp_u32(u_input.a, 4294967295u, arg_1.x), ~20306u), ~(~vec4<u32>(54088u, u_input.b, 76037u, 74014u))), abs(2147483647i), global4[_wgslsmith_index_u32(arg_1.x, 25u)]);
    return vec4<u32>(firstTrailingBit(min(func_5(~vec4<u32>(4294967295u, 14219u, 1u, arg_1.x), 0i, global4[_wgslsmith_index_u32(arg_1.x, 25u)]), min(_wgslsmith_mod_u32(2816u, 15949u), arg_1.x))), 25072u, func_2(), select(~4294967295u, arg_1.x, !((arg_0 || false) || false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.d;
    global4 = array<Struct_3, 25>();
    var var_1 = global3[_wgslsmith_index_u32(~1u, 11u)];
    var var_2 = Struct_4((~select(vec4<u32>(4294967295u, u_input.a, u_input.c.x, 58840u), vec4<u32>(u_input.a, u_input.c.x, 1u, u_input.c.x), vec4<bool>(true, false, true, false)) | func_1(u_input.d.x != u_input.d.x, vec2<u32>(u_input.b, u_input.c.x))) >> (select(~(~vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.c.x)), select(vec4<u32>(64221u, u_input.a, u_input.b, u_input.a) >> (vec4<u32>(u_input.b, 0u, u_input.c.x, u_input.b) % vec4<u32>(32u)), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u), any(vec3<bool>(false, false, true))), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), global2[_wgslsmith_index_u32(u_input.a, 21u)]), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))) % vec4<u32>(32u)), Struct_3(global3[_wgslsmith_index_u32(u_input.b, 11u)]), vec3<u32>(u_input.a, u_input.b, 9027u));
    var var_3 = !any(!vec2<bool>(select(true, false, true), any(vec2<bool>(false, true))));
    var var_4 = -964f;
    var var_5 = select(firstLeadingBit(vec4<i32>(0i, _wgslsmith_sub_i32(i32(-1i) * -2706i, 21695i & var_0.x), 46889i, ~var_0.x)), global1[_wgslsmith_index_u32(func_5(var_2.a, var_0.x, Struct_3(var_2.b.a)) ^ u_input.b, 16u)], false);
    let var_6 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.b.a.a.x, -401f, var_2.b.a.a.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_2.b.a.a.x, -1708f) - var_1.a))))));
    global0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_5.wwx));
}

