struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(0i, -22935i, -1i), vec3<i32>(13555i, 16105i, -1i), vec3<i32>(-12561i, 41506i, -304i), vec3<i32>(-4230i, -23778i, 1444i), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, -25351i), vec3<i32>(13275i, 36839i, -19247i), vec3<i32>(2377i, -26613i, -63786i), vec3<i32>(-20122i, -1207i, 2147483647i), vec3<i32>(0i, i32(-2147483648), 46870i), vec3<i32>(1i, 35218i, 1i), vec3<i32>(-61923i, -40752i, i32(-2147483648)), vec3<i32>(49850i, 2147483647i, -19201i), vec3<i32>(i32(-2147483648), -1i, 720i), vec3<i32>(-48129i, 2147483647i, -51125i), vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(-37494i, 29603i, 25984i), vec3<i32>(700i, i32(-2147483648), -19505i), vec3<i32>(-37430i, i32(-2147483648), -73829i), vec3<i32>(2147483647i, -1i, 14403i), vec3<i32>(55243i, 0i, 1532i), vec3<i32>(i32(-2147483648), 2147483647i, -22670i), vec3<i32>(1i, -6122i, 7476i), vec3<i32>(-25993i, 33746i, i32(-2147483648)), vec3<i32>(-1i, 1531i, 1i), vec3<i32>(2147483647i, 1745i, -36298i), vec3<i32>(-39198i, 41244i, i32(-2147483648)), vec3<i32>(-52123i, 444i, -53616i), vec3<i32>(-5717i, 397i, 0i), vec3<i32>(-5106i, 11364i, -1i), vec3<i32>(14587i, -1i, 17047i));

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(1277f, vec3<i32>(-24835i, 8631i, i32(-2147483648)), vec2<bool>(true, true), vec3<bool>(false, false, true), 522f);

var<private> global4: Struct_2;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = select(select(vec3<bool>(true, true | all(vec2<bool>(global4.b.c.x, true)), true), vec3<bool>(any(select(vec4<bool>(false, true, arg_0, global4.a.x), vec4<bool>(false, true, true, global2.c.x), arg_0)), !arg_0, !arg_0), vec3<bool>(arg_1.b, _wgslsmith_f_op_f32(global4.b.e * global3.a) > _wgslsmith_f_op_f32(-global3.e), !any(global4.b.c))), global3.d, global2.d);
    var var_1 = Struct_4(any(global4.b.d));
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-657f, 689f), _wgslsmith_f_op_f32(-1000f + global4.b.a)), -161f)), global3.b, select(vec2<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(34735i, -83340i, global2.b.x, 1i), vec4<i32>(17541i, global2.b.x, global2.b.x, -18587i)) != firstLeadingBit(16605i), false), global2.c, select(vec2<bool>(arg_0, all(vec3<bool>(arg_0, false, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, arg_1.b), vec2<bool>(true, true), arg_0), vec2<bool>(true, true)), var_1.a)), vec3<bool>(false, any(!global2.d), select(global4.b.a != _wgslsmith_f_op_f32(round(1000f)), arg_0 | any(global4.a), !global2.d.x)), global3.e);
    let var_2 = 12177i;
    var var_3 = Struct_2(!global3.d, global4.b, u_input.c.x, select(abs(~firstTrailingBit(vec4<u32>(arg_1.a, 4294967295u, u_input.b, 1u))), select(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(global4.d, vec4<u32>(36157u, 4294967295u, arg_1.a, global4.d.x)), _wgslsmith_clamp_vec4_u32(global4.d, global4.d, global4.d)), abs(vec4<u32>(u_input.b, arg_1.a, global4.d.x, 84773u)), vec4<bool>(true, true, arg_0, any(vec2<bool>(arg_0, true)))), select(var_0.x && global0.a, !arg_0, false) || true), true);
    return global4.d;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = Struct_2(arg_1.d, global4.b, _wgslsmith_div_i32(11518i, 1i), select(~global4.d & global4.d, func_3(false, Struct_3(7181u, false)), any(vec4<bool>(arg_2.b.x >= 2147483647i, global2.c.x, false, any(vec3<bool>(arg_1.c.x, true, global2.d.x))))), true);
    var var_1 = 1u;
    var_0 = Struct_2(!global4.a, arg_1, global4.c, ~vec4<u32>(global4.d.x, 8773u, _wgslsmith_mult_u32(global4.d.x, _wgslsmith_div_u32(global4.d.x, 4294967295u)), func_3(true, Struct_3(u_input.b, arg_0)).x), any(select(select(select(var_0.b.c, vec2<bool>(false, arg_0), vec2<bool>(global4.e, global4.b.c.x)), arg_2.d.xx, arg_2.d.xz), select(vec2<bool>(false, true), !vec2<bool>(false, arg_1.c.x), select(vec2<bool>(true, global3.d.x), vec2<bool>(true, true), vec2<bool>(arg_0, arg_1.d.x))), vec2<bool>(false, true))));
    return select(!select(!select(vec2<bool>(arg_1.d.x, arg_0), global2.d.xx, arg_1.d.x), vec2<bool>(any(vec2<bool>(true, var_0.b.d.x)), true), firstLeadingBit(arg_1.b.x) != 0i), select(select(select(select(arg_1.d.yz, global4.b.d.xy, vec2<bool>(global3.c.x, arg_1.c.x)), !global3.c, 15996u < var_0.d.x), global3.c, true), !select(select(vec2<bool>(true, false), var_0.a.xx, true), vec2<bool>(true, global2.d.x), false), arg_2.d.zz), all(select(vec4<bool>(true, global0.a, arg_2.b.x < 75991i, true), select(vec4<bool>(false, true, true, false), vec4<bool>(arg_1.d.x, true, arg_1.d.x, global0.a), global4.e), vec4<bool>(arg_1.c.x, arg_2.b.x >= -1i, true, global3.c.x))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_4(!any(global3.d.zz));
    global2 = Struct_1(336f, _wgslsmith_mod_vec3_i32(u_input.c, global2.b), select(!(!(!vec2<bool>(arg_1.d.x, global2.c.x))), vec2<bool>(!all(vec4<bool>(false, false, arg_1.d.x, true)), var_0.a), select(arg_1.c, vec2<bool>(false | arg_0.x, all(vec2<bool>(false, global2.d.x))), vec2<bool>(global3.c.x, true))), vec3<bool>(any(select(vec3<bool>(true, true, true), arg_1.d, any(vec4<bool>(true, global4.a.x, false, global4.a.x)))), true, arg_1.d.x), 1066f);
    let var_1 = arg_1;
    var_0 = Struct_4(!(1i < (u_input.c.x & global2.b.x)) && all(arg_0));
    return global4.b;
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> Struct_3 {
    var var_0 = -1i ^ _wgslsmith_add_i32(-19563i, global4.c);
    global2 = func_4(select(!(!arg_0.yx), select(func_2(!global0.a, Struct_1(-765f, vec3<i32>(global3.b.x, 1i, u_input.a), global3.c, vec3<bool>(global0.a, false, true), global4.b.e), global4.b), global4.b.c, global2.c), select(select(vec2<bool>(global3.c.x, global0.a), global3.c, vec2<bool>(false, arg_0.x)), vec2<bool>(!arg_0.x, func_2(true, global4.b, global4.b).x), global4.a.xy)), Struct_1(-1906f, ~vec3<i32>(-49259i, i32(-1i) * -14399i, -1i), select(vec2<bool>(func_2(global3.d.x, Struct_1(global3.e, vec3<i32>(37183i, u_input.c.x, -2147483647i), global3.c, global2.d, 300f), Struct_1(243f, vec3<i32>(global3.b.x, 8566i, 19423i), arg_0.zz, global2.d, 364f)).x, func_2(global0.a, Struct_1(global4.b.e, global3.b, arg_0.yz, arg_0, 1391f), Struct_1(1000f, global4.b.b, arg_0.zx, vec3<bool>(arg_0.x, false, global4.b.c.x), global4.b.e)).x), select(!vec2<bool>(false, global4.e), global2.c, false), select(!vec2<bool>(global4.a.x, global0.a), !vec2<bool>(global4.b.c.x, false), select(vec2<bool>(global0.a, false), vec2<bool>(global4.b.c.x, true), false))), !select(select(global3.d, vec3<bool>(false, false, true), vec3<bool>(global2.d.x, global3.d.x, false)), global4.b.d, global4.b.d), _wgslsmith_f_op_f32(-665f - -835f)));
    var var_1 = select(!(!global4.a), select(vec3<bool>(true, true, true), !select(!vec3<bool>(global2.d.x, false, global3.d.x), arg_0, !arg_0), true), select(func_4(vec2<bool>(false || arg_0.x, false), Struct_1(_wgslsmith_f_op_f32(trunc(global2.e)), _wgslsmith_mult_vec3_i32(global3.b, vec3<i32>(u_input.a, global4.b.b.x, u_input.c.x)), !vec2<bool>(global0.a, false), arg_0, global2.a)).d, vec3<bool>(_wgslsmith_f_op_f32(-global3.e) > 622f, !(!global0.a), all(select(vec4<bool>(global4.a.x, true, true, false), vec4<bool>(arg_0.x, true, global0.a, false), false))), !func_4(func_4(vec2<bool>(global0.a, true), Struct_1(172f, u_input.c, vec2<bool>(global2.d.x, global0.a), vec3<bool>(true, true, true), -521f)).d.zx, global4.b).d));
    var var_2 = global4.b;
    let var_3 = Struct_3(firstTrailingBit(arg_1), false);
    return var_3;
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, global3.e)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, -766f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(728f, -1000f) * vec2<f32>(global4.b.a, -260f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1699f, global2.e) - vec2<f32>(global2.a, 2525f))), !func_4(global4.a.yz, Struct_1(479f, vec3<i32>(u_input.a, -41263i, global4.b.b.x), vec2<bool>(global3.d.x, global4.e), global3.d, 241f)).c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-741f, global3.a), vec2<f32>(542f, 210f), global2.c)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.e, 936f))))))));
    global4 = Struct_2(func_4(!(!global3.c), Struct_1(-783f, _wgslsmith_mult_vec3_i32(vec3<i32>(global4.c, 1i, -2147483647i), u_input.c), select(vec2<bool>(true, global0.a), select(vec2<bool>(false, global4.e), global2.d.yx, global3.d.x), global2.c), global4.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.e - arg_3)))).d, Struct_1(-648f, vec3<i32>(global3.b.x, 1i, global3.b.x), vec2<bool>(global0.a & true, any(select(global2.d, global3.d, vec3<bool>(arg_1.b, global4.a.x, global4.b.c.x)))), vec3<bool>(arg_1.b, all(func_4(vec2<bool>(true, global3.c.x), global4.b).d), global3.d.x), _wgslsmith_f_op_f32(f32(-1f) * -216f)), -1i, select(~(~global4.d ^ vec4<u32>(18416u, 1u, 1u, arg_0)), ~vec4<u32>(arg_2.x, 53316u, u_input.b, firstTrailingBit(arg_0)), !all(global4.a.zz)), false);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(2094f)), _wgslsmith_f_op_f32(global3.e * -167f));
    var var_2 = ~_wgslsmith_div_u32(~arg_2.x, arg_0 | (13823u & arg_2.x));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-308f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1029f)))));
    global1 = array<vec3<i32>, 31>();
    var var_1 = Struct_3(abs(29645u), global4.a.x);
    let var_2 = Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(func_5(var_1.a, func_1(global4.a, global4.d.x), _wgslsmith_sub_vec2_u32(global4.d.wz, vec2<u32>(0u, 85316u)), global4.b.e), u_input.b, 0u, countOneBits(global4.d.x)), vec4<u32>(func_3(true, func_1(global3.d, 0u)).x, _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, var_1.a), 43723u), 4294967295u, select(u_input.b, var_1.a, !global2.c.x))), true);
    let var_3 = abs(global4.d.yy);
    global0 = Struct_4(~_wgslsmith_sub_u32(~global4.d.x, ~1u) <= (~(~u_input.b) | reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(61373u, 33736u), global4.d.xz))));
    var_1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(26238u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global4.d.x, var_1.a, var_3.x, u_input.b), global4.d), max(global4.d & global4.d, vec4<u32>(u_input.b, var_1.a, 10137u, 1u))), var_3.x ^ 1u), vec4<f32>(global4.b.e, 489f, func_4(func_4(vec2<bool>(global3.c.x, global4.e), func_4(global2.d.xz, global4.b)).c, func_4(global3.c, global4.b)).e, global4.b.a), 238i >> (var_2.a % 32u));
}

