struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global1: Struct_2;

var<private> global2: array<bool, 10>;

var<private> global3: i32 = 55940i;

var<private> global4: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(Struct_1(vec4<i32>(-20828i, i32(-2147483648), 10053i, 2147483647i), vec4<i32>(0i, i32(-2147483648), -50518i, -1i)), vec3<i32>(2147483647i, 5112i, 1i), 1u), Struct_4(Struct_1(vec4<i32>(17802i, -1i, -38104i, 1i), vec4<i32>(1i, i32(-2147483648), -24248i, 1i)), vec3<i32>(14446i, 1144i, -73047i), 0u), Struct_4(Struct_1(vec4<i32>(i32(-2147483648), 6552i, -48852i, i32(-2147483648)), vec4<i32>(-11685i, 2147483647i, 1106i, 13492i)), vec3<i32>(1i, -18414i, 1i), 38355u), Struct_4(Struct_1(vec4<i32>(1i, i32(-2147483648), 0i, 14035i), vec4<i32>(-13551i, 28871i, 0i, -1i)), vec3<i32>(-46310i, 56040i, 1i), 33126u), Struct_4(Struct_1(vec4<i32>(i32(-2147483648), -1865i, 2147483647i, -44494i), vec4<i32>(i32(-2147483648), -1i, 64710i, -24539i)), vec3<i32>(18141i, 19974i, 21049i), 35054u), Struct_4(Struct_1(vec4<i32>(1312i, 41126i, 40208i, -1i), vec4<i32>(2147483647i, -11735i, 2147483647i, 1i)), vec3<i32>(2147483647i, -20440i, -25692i), 63194u), Struct_4(Struct_1(vec4<i32>(2147483647i, -266i, -1i, 0i), vec4<i32>(0i, -439i, -16128i, 0i)), vec3<i32>(-1i, 2147483647i, -1i), 4294967295u), Struct_4(Struct_1(vec4<i32>(-3258i, 1i, 12607i, 1i), vec4<i32>(0i, 1i, 24971i, -1i)), vec3<i32>(-1i, -23703i, 2147483647i), 4294967295u), Struct_4(Struct_1(vec4<i32>(0i, -1i, -31387i, i32(-2147483648)), vec4<i32>(36209i, 1i, 0i, -668i)), vec3<i32>(0i, 2147483647i, -62610i), 56905u), Struct_4(Struct_1(vec4<i32>(-53632i, i32(-2147483648), 28864i, -1i), vec4<i32>(2147483647i, 9570i, 2147483647i, -11741i)), vec3<i32>(1i, -14362i, -52663i), 68771u), Struct_4(Struct_1(vec4<i32>(84783i, -21209i, -1i, 38624i), vec4<i32>(44790i, 1i, 0i, 2147483647i)), vec3<i32>(i32(-2147483648), -30485i, 20553i), 10498u), Struct_4(Struct_1(vec4<i32>(11796i, 11630i, -475i, -8640i), vec4<i32>(i32(-2147483648), -6148i, -38462i, -44691i)), vec3<i32>(0i, 2147483647i, 1i), 18335u), Struct_4(Struct_1(vec4<i32>(36027i, 57257i, 23493i, 2147483647i), vec4<i32>(1i, -1i, 929i, 30325i)), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), 40817u), Struct_4(Struct_1(vec4<i32>(-40873i, 35769i, i32(-2147483648), -16987i), vec4<i32>(36703i, 2147483647i, 1i, 0i)), vec3<i32>(i32(-2147483648), 0i, 0i), 0u), Struct_4(Struct_1(vec4<i32>(9437i, -25858i, 3935i, -21771i), vec4<i32>(31838i, 9031i, -1583i, i32(-2147483648))), vec3<i32>(67414i, -48307i, 0i), 38685u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(148f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-450f - global1.b.x)))), -724f));
    global2 = array<bool, 10>();
    var var_1 = -473f;
    let var_2 = arg_0.d;
    global2 = array<bool, 10>();
    return vec4<bool>(true, global1.a && global1.a, all(select(vec4<bool>(false && global1.a, true, true, any(global0.zy)), select(!vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 10u)], false, true), select(vec4<bool>(false, false, global1.a, false), vec4<bool>(arg_0.a, false, true, false), vec4<bool>(global1.a, global2[_wgslsmith_index_u32(u_input.b.x, 10u)], global0.x, global2[_wgslsmith_index_u32(u_input.b.x, 10u)])), vec4<bool>(true, global1.a, false, false)), global1.a)), global0.x);
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<u32>(select(u_input.b.x, u_input.b.x, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(37692u, 36240u), 10u)]), 14220u, 76403u, ~(~4294967295u));
    let var_1 = !vec2<bool>(global1.a, global0.x);
    var var_2 = select(!vec4<bool>(var_1.x, true, ~u_input.c <= ~1i, true), !select(!select(vec4<bool>(var_1.x, global2[_wgslsmith_index_u32(var_0.x, 10u)], false, false), vec4<bool>(var_1.x, var_1.x, var_1.x, global0.x), global1.a), select(select(vec4<bool>(true, false, global1.a, true), vec4<bool>(global0.x, false, global2[_wgslsmith_index_u32(var_0.x, 10u)], false), global0.x), !vec4<bool>(false, global0.x, global2[_wgslsmith_index_u32(var_0.x, 10u)], global2[_wgslsmith_index_u32(u_input.b.x, 10u)]), !global1.a), select(select(vec4<bool>(false, global1.a, global0.x, false), vec4<bool>(false, true, global2[_wgslsmith_index_u32(var_0.x, 10u)], false), global0.x), vec4<bool>(true, true, true, true), var_1.x)), any(!vec4<bool>(true, any(global0.ww), true, var_0.x == 4294967295u)));
    global0 = func_3(Struct_2(var_2.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b), global1.b) + global1.b), vec4<i32>(_wgslsmith_dot_vec4_i32(-global1.c, ~global1.c), u_input.c, ~(-1i), 21476i), global1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-655f, -125f)));
    global3 = global1.c.x;
    return Struct_1(global1.c, select(global1.c, vec4<i32>(reverseBits(_wgslsmith_clamp_i32(7199i, u_input.c, 57400i)), 0i, abs(global1.c.x), i32(-1i) * -8822i), var_2.x));
}

fn func_1() -> Struct_1 {
    let var_0 = countOneBits(40539u);
    var var_1 = select(vec3<bool>(false, global0.x, true || all(vec3<bool>(false, false, global1.a))), !select(!(!global0.ywx), select(select(global0.ywx, vec3<bool>(global0.x, global2[_wgslsmith_index_u32(u_input.b.x, 10u)], false), global1.a), global0.xwy, all(vec2<bool>(global1.a, true))), global0.xwy), _wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(-298f * -136f)) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(299f + -744f), _wgslsmith_f_op_f32(-1912f + global1.b.x))));
    return func_2();
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = false;
    let var_1 = Struct_4(Struct_1(reverseBits(arg_2.b & global1.d.a) >> (vec4<u32>(1u, 66599u, ~1u, select(u_input.b.x, 9237u, var_0)) % vec4<u32>(32u)), firstTrailingBit(select(vec4<i32>(-42726i, arg_2.a.x, global1.c.x, arg_2.b.x) >> (vec4<u32>(47884u, u_input.b.x, 1u, 34201u) % vec4<u32>(32u)), global1.c, global1.a == global2[_wgslsmith_index_u32(4294967295u, 10u)]))), arg_2.a.wzx, ~(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u)) & 3793u));
    var var_2 = global0.ywy;
    var var_3 = 1u;
    let var_4 = _wgslsmith_mod_i32(select(var_1.a.b.x << (1u % 32u), 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) - -839f) < _wgslsmith_f_op_f32(-global1.b.x)), u_input.a.x);
    return Struct_2(false, _wgslsmith_f_op_vec2_f32(global1.b * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.b.x, arg_1), vec2<f32>(1707f, global1.b.x)) + _wgslsmith_f_op_vec2_f32(select(global1.b, global1.b, vec2<bool>(true, false)))))), -func_1().b, global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(!(!global0.zy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.b.x, -1000f))) + -111f), func_1());
    var var_0 = global1.a;
    global4 = array<Struct_4, 15>();
    var var_1 = 0u;
    let var_2 = Struct_3(func_4(select(func_3(func_4(global0.yw, 1158f, global1.d), global1.b.x, _wgslsmith_f_op_vec2_f32(global1.b * global1.b)).xx, select(select(global0.xz, global0.yx, false), select(vec2<bool>(global0.x, false), vec2<bool>(global1.a, false), true), vec2<bool>(true, global0.x)), true), global1.b.x, Struct_1(vec4<i32>(func_1().b.x, -1i, _wgslsmith_clamp_i32(48509i, global1.d.b.x, -1i), _wgslsmith_div_i32(2147483647i, u_input.c)), vec4<i32>(0i, u_input.c, i32(-1i) * -2147483647i, firstTrailingBit(u_input.a.x)))));
    let var_3 = var_2;
    let var_4 = var_2.a;
    global0 = vec4<bool>(!var_3.a.a, select(true, true, all(vec4<bool>(false | var_3.a.a, true, all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 10u)], true)), true))), true, global0.x);
    let var_5 = var_3.a.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, ~(-33600i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_5 + var_5), -1000f, _wgslsmith_f_op_f32(-1111f + 166f), global1.b.x)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_5, global1.b.x, var_2.a.b.x) + vec4<f32>(var_5, var_2.a.b.x, var_4.b.x, -303f)), vec4<f32>(var_5, -1059f, 628f, var_5))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1710f, var_5, var_2.a.b.x, global1.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.b.x, var_5, 315f, var_5))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.b.x, -1166f, -814f))));
}

