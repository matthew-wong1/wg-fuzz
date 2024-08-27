struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-87739i, 80i), 29418u, 385i, 0u);

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<i32>(0i, -12627i), 1u, 33290i, 1u), Struct_1(vec2<i32>(-41117i, 2147483647i), 1u, 17305i, 4294967295u), Struct_1(vec2<i32>(64871i, 51988i), 21038u, 21905i, 2901u), Struct_1(vec2<i32>(-6542i, -1i), 0u, -37494i, 1u), Struct_1(vec2<i32>(28598i, -1947i), 0u, 2147483647i, 6635u), Struct_1(vec2<i32>(-1i, -1i), 1u, -1i, 35898u), Struct_1(vec2<i32>(-28375i, 2147483647i), 26405u, i32(-2147483648), 0u), Struct_1(vec2<i32>(1i, -36553i), 1u, i32(-2147483648), 0u), Struct_1(vec2<i32>(1i, i32(-2147483648)), 1256u, -1i, 12731u), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 0u, 2147483647i, 0u), Struct_1(vec2<i32>(1i, -1i), 6782u, -76336i, 63495u), Struct_1(vec2<i32>(18999i, -14510i), 4294967295u, -7770i, 12151u), Struct_1(vec2<i32>(1i, 2147483647i), 0u, -8550i, 13144u), Struct_1(vec2<i32>(i32(-2147483648), 33566i), 28265u, i32(-2147483648), 4294967295u), Struct_1(vec2<i32>(4048i, 1i), 69035u, i32(-2147483648), 1u), Struct_1(vec2<i32>(2147483647i, -23912i), 4294967295u, 72439i, 52643u), Struct_1(vec2<i32>(3195i, 2147483647i), 0u, -18197i, 56274u), Struct_1(vec2<i32>(1i, -45507i), 32353u, -40691i, 0u), Struct_1(vec2<i32>(50i, -9110i), 31480u, 0i, 4294967295u), Struct_1(vec2<i32>(96668i, 8712i), 75090u, -6238i, 17206u), Struct_1(vec2<i32>(2147483647i, 1i), 16981u, 1i, 1u), Struct_1(vec2<i32>(-7469i, 1i), 1u, 27878i, 0u), Struct_1(vec2<i32>(569i, 56438i), 1u, -27839i, 1u), Struct_1(vec2<i32>(i32(-2147483648), 12227i), 76444u, 0i, 0u), Struct_1(vec2<i32>(20473i, 2147483647i), 31511u, 2147483647i, 4294967295u));

var<private> global3: Struct_1;

var<private> global4: f32 = -202f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_f32(725f * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1248f, _wgslsmith_f_op_f32(120f + 1307f)))) + -1655f));
    global3 = arg_0;
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1099f, -719f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-770f, -463f, var_0.x))), vec3<f32>(519f, -432f, -2471f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1766f, var_0.x, -532f)))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1084f)), 564f, var_0.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(exp2(var_0.x)), -894f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(663f, var_0.x, -1809f), vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, 924f, -1074f)))))), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))))));
    global3 = arg_0;
    return _wgslsmith_f_op_f32(sign(var_0.x));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    global3 = arg_0;
    let var_0 = arg_0;
    global2 = array<Struct_1, 25>();
    global2 = array<Struct_1, 25>();
    var var_1 = ~5675u;
    return vec2<bool>(!(_wgslsmith_f_op_f32(func_3(Struct_1(arg_0.a, 0u, global1.a.x, 12047u))) < _wgslsmith_f_op_f32(f32(-1f) * -2450f)), all(vec3<bool>(true, true, true)));
}

fn func_1(arg_0: f32, arg_1: bool) -> vec3<bool> {
    var var_0 = global2[_wgslsmith_index_u32(~(~101281u), 25u)];
    let var_1 = Struct_1(~_wgslsmith_mult_vec2_i32(global3.a, -max(global1.a, vec2<i32>(var_0.c, -1i))), global3.d, -2147483647i, ~max(~17501u, ~u_input.a));
    var var_2 = ~vec2<u32>(firstLeadingBit(var_0.d), var_1.b);
    let var_3 = select(select(vec2<bool>(!(arg_1 & true), all(vec2<bool>(true, arg_1))), !select(!vec2<bool>(false, arg_1), select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false)), true || arg_1), !select(true, any(vec4<bool>(arg_1, true, arg_1, false)), arg_0 < 1240f)), func_2(global2[_wgslsmith_index_u32(61835u, 25u)]), !arg_1);
    var var_4 = !select(vec3<bool>(true, any(select(vec3<bool>(var_3.x, arg_1, true), vec3<bool>(false, false, false), true)), arg_1), !vec3<bool>(arg_1, true, true), false);
    return select(select(vec3<bool>(false, true, (global0.b < u_input.a) && (var_0.c < -18266i)), vec3<bool>((var_1.b != global3.d) || all(vec4<bool>(var_3.x, false, true, false)), any(vec4<bool>(true, var_4.x, arg_1, var_4.x)) & var_3.x, false), !vec3<bool>(any(var_4.yz), func_2(Struct_1(global0.a, 31325u, var_0.a.x, 79984u)).x, !arg_1)), !vec3<bool>(true, arg_1, arg_1), select(vec3<bool>(func_2(Struct_1(global3.a, 17731u, var_1.c, 1u)).x, arg_0 > 684f, (arg_1 | true) || true), select(vec3<bool>(var_4.x, !arg_1, false), select(vec3<bool>(false, false, arg_1), select(vec3<bool>(false, false, false), vec3<bool>(arg_1, false, arg_1), arg_1), !var_3.x), func_2(Struct_1(var_1.a, var_0.b, 0i, 17850u)).x), !(!var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(true, true, true), select(!func_1(-275f, false), vec3<bool>(true, false, true), false), vec3<bool>(func_1(_wgslsmith_f_op_f32(sign(-564f)), true).x, !func_1(322f, false).x, any(vec3<bool>(false, false, false)))), select(vec3<bool>(reverseBits(global1.b) >= global0.b, false, all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1627f - -192f)), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), func_1(_wgslsmith_f_op_f32(floor(-1000f)), func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1466f), -1000f, true)), !any(vec4<bool>(false, false, false, false))).x));
    let var_1 = var_0;
    var var_2 = var_0.x;
    global0 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(50509u, 37936u), vec2<u32>(_wgslsmith_div_u32(global0.b, 67753u), ~firstLeadingBit(global3.b))), 25u)];
    var var_3 = global2[_wgslsmith_index_u32(39339u, 25u)];
    let var_4 = countOneBits(reverseBits(0i));
    global4 = _wgslsmith_f_op_f32(func_3(Struct_1(vec2<i32>(21522i, ~abs(-2147483647i)), ~_wgslsmith_mod_u32(~global3.b, abs(44257u)), ~countOneBits(-24869i) & -var_3.a.x, ~global0.b)));
    var var_5 = vec4<u32>(~(~var_3.d), ~global3.b, global1.d << (1u % 32u), ~13214u);
    var var_6 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~countOneBits(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(4294967295u, global1.b)), var_5.yw << (vec2<u32>(global3.b, var_5.x) % vec2<u32>(32u)))), ~var_5.zy), 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(924f, -196f, -285f) * vec3<f32>(-218f, 1142f, 464f))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-560f)) - -468f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<i32>(u_input.e.x, global3.a.x), global1.b, var_4, global3.b))), _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(global3.b, 25u)]))), 1f)), 4120u);
}

