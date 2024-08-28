struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(915f, true, vec2<u32>(0u, 23915u), vec4<u32>(0u, 0u, 1u, 16580u));

var<private> global1: vec3<bool>;

var<private> global2: array<vec4<bool>, 18>;

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(469f, false, vec2<u32>(90545u, 0u), vec4<u32>(1u, 51299u, 45189u, 1u)), Struct_1(104f, false, vec2<u32>(4294967295u, 85856u), vec4<u32>(2948u, 6032u, 63402u, 5993u)), Struct_1(-1811f, true, vec2<u32>(48397u, 4294967295u), vec4<u32>(69674u, 4294967295u, 43190u, 1u)), Struct_1(-435f, false, vec2<u32>(51817u, 54974u), vec4<u32>(4294967295u, 67113u, 1u, 4309u)), Struct_1(-830f, false, vec2<u32>(0u, 1u), vec4<u32>(5153u, 0u, 0u, 12223u)), Struct_1(1000f, false, vec2<u32>(96u, 4294967295u), vec4<u32>(1u, 78637u, 38591u, 0u)), Struct_1(-1465f, false, vec2<u32>(140005u, 61854u), vec4<u32>(4294967295u, 62800u, 986u, 6378u)), Struct_1(-1407f, true, vec2<u32>(78125u, 1u), vec4<u32>(8806u, 4294967295u, 57465u, 20392u)), Struct_1(770f, false, vec2<u32>(11601u, 74916u), vec4<u32>(71935u, 1u, 80120u, 1u)), Struct_1(-875f, true, vec2<u32>(23187u, 47615u), vec4<u32>(23355u, 0u, 1u, 48760u)), Struct_1(1000f, false, vec2<u32>(0u, 4294967295u), vec4<u32>(69878u, 28421u, 4294967295u, 1u)));

var<private> global4: vec4<u32> = vec4<u32>(0u, 38153u, 30712u, 0u);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    global2 = array<vec4<bool>, 18>();
    let var_0 = false;
    global4 = _wgslsmith_clamp_vec4_u32(select(global0.d, vec4<u32>(global4.x, _wgslsmith_div_u32(u_input.b, 0u), ~global4.x, 1u), true), ~(~(vec4<u32>(global0.d.x, 4294967295u, u_input.c, 33025u) | vec4<u32>(global4.x, 1u, 4294967295u, 65836u))), ~(~global0.d) << (select(vec4<u32>(global4.x, 42938u, 49971u, 55237u), _wgslsmith_div_vec4_u32(global0.d, global0.d), global1.x) % vec4<u32>(32u))) >> (global0.d % vec4<u32>(32u));
    let var_1 = false;
    var var_2 = global1.zx;
    return select(~_wgslsmith_mod_i32(~_wgslsmith_clamp_i32(1i, arg_0.x, -19712i), -_wgslsmith_dot_vec2_i32(arg_0.xy, vec2<i32>(u_input.a.x, -2147483647i))), 0i, !(!(abs(global0.d.x) != abs(u_input.b))));
}

fn func_2() -> u32 {
    var var_0 = global0.c.x;
    global2 = array<vec4<bool>, 18>();
    let var_1 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(countOneBits(_wgslsmith_add_i32(19317i, -2147483647i)), 1i ^ _wgslsmith_mult_i32(u_input.a.x, -1i)), -_wgslsmith_div_i32(1i, _wgslsmith_div_i32(u_input.a.x, 2147483647i))), ~select(_wgslsmith_add_i32(func_3(vec3<i32>(2147483647i, u_input.a.x, 21494i)), abs(-3203i)), ~(-u_input.a.x), global0.b), 0i);
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - 155f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1029f, _wgslsmith_f_op_f32(-135f * global0.a))))), global1.x, select(vec2<u32>(u_input.c, 1u), global4.yy, true), ~vec4<u32>(global0.d.x | 4294967295u, reverseBits(reverseBits(1u)), u_input.c, _wgslsmith_sub_u32(_wgslsmith_div_u32(34913u, 79617u), global4.x)));
    global2 = array<vec4<bool>, 18>();
    return _wgslsmith_add_u32(10810u, select(~0u, global4.x, global1.x));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = true;
    var var_1 = _wgslsmith_add_vec2_u32(select(~vec2<u32>(~global4.x, 1u), min(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, global0.c.x), arg_0.d.yx, global0.d.wy), reverseBits(global0.d.wy)), false & !any(vec3<bool>(arg_3.b, true, arg_3.b))), vec2<u32>(arg_0.c.x, _wgslsmith_clamp_u32(countOneBits(1u), 1u >> ((1u | arg_3.d.x) % 32u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_3.d.x, global4.x, u_input.c), ~1u))));
    global0 = Struct_1(-377f, true, _wgslsmith_mult_vec2_u32(firstLeadingBit(~min(global4.xx, vec2<u32>(u_input.c, global0.d.x))), ~abs(arg_3.d.yy)), firstLeadingBit(abs(arg_2.d)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, -1403f, arg_2.a, 313f)) - vec4<f32>(-660f, arg_2.a, _wgslsmith_f_op_f32(-1902f - -748f), _wgslsmith_f_op_f32(arg_3.a - arg_3.a)))));
    var var_3 = arg_2;
    return arg_0.c.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = func_4(arg_1, !(all(vec2<bool>(false, true)) & true), Struct_1(arg_1.a, true, firstLeadingBit(vec2<u32>(_wgslsmith_mult_u32(arg_1.c.x, 4294967295u), 8713u)), vec4<u32>(_wgslsmith_sub_u32(global4.x, u_input.b) << (1u % 32u), func_2(), 1u, abs(reverseBits(23908u)))), Struct_1(_wgslsmith_f_op_f32(floor(1157f)), true, _wgslsmith_mult_vec2_u32(select(arg_1.d.wx, vec2<u32>(arg_1.d.x, 6787u) >> (arg_1.c % vec2<u32>(32u)), vec2<bool>(false, true)), _wgslsmith_div_vec2_u32(vec2<u32>(13620u, 1u), vec2<u32>(1u, 4294967295u)) | (vec2<u32>(1u, global4.x) & vec2<u32>(4294967295u, global4.x))), global0.d));
    global1 = select(vec3<bool>(any(vec3<bool>(true, arg_0, true)), arg_1.b, true), select(!(!select(vec3<bool>(global1.x, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, global1.x))), !select(vec3<bool>(global1.x, true, global0.b), vec3<bool>(false, true, true), select(vec3<bool>(false, arg_0, global0.b), vec3<bool>(true, false, global0.b), global1.x)), ~global0.c.x < 4294967295u), arg_0);
    global1 = !select(select(vec3<bool>(any(vec3<bool>(arg_0, true, false)), global1.x, false), select(vec3<bool>(global1.x, global1.x, global0.b), vec3<bool>(arg_1.b, true, true), true), true), select(!select(vec3<bool>(arg_1.b, global1.x, global0.b), vec3<bool>(arg_0, false, arg_1.b), true), !vec3<bool>(true, global1.x, true), any(!vec2<bool>(false, arg_1.b))), arg_1.b);
    let var_1 = global3[_wgslsmith_index_u32(global4.x, 11u)];
    var var_2 = arg_1;
    return global0.a;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a, arg_0)) + _wgslsmith_f_op_f32(max(-446f, arg_2.x))), _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(func_1(global1.x, global3[_wgslsmith_index_u32(4294967295u, 11u)]))), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(arg_1.a + arg_2.x))) + vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-870f, 1088f)) * _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - 2530f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = select(vec3<bool>(any(vec3<bool>(true, true, true)), firstTrailingBit(0i) != _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x, -2147483647i, u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-56194i, u_input.a.x), u_input.a)), ~(~u_input.a.x) != ~u_input.a.x), select(!(!select(vec3<bool>(true, arg_1.b, global1.x), vec3<bool>(arg_1.b, global1.x, global1.x), vec3<bool>(false, true, global1.x))), select(vec3<bool>(all(vec3<bool>(false, true, global0.b)), true, true), select(select(vec3<bool>(global0.b, false, true), vec3<bool>(false, false, arg_1.b), global1.x), vec3<bool>(false, false, true), vec3<bool>(global0.b, false, true)), vec3<bool>(select(false, global1.x, false), any(vec3<bool>(true, global0.b, true)), true)), !select(!vec3<bool>(global1.x, global1.x, arg_1.b), vec3<bool>(true, arg_1.b, false), true)), false);
    global1 = vec3<bool>(global1.x | true, !any(vec3<bool>(any(vec4<bool>(true, arg_1.b, global0.b, false)), global1.x, false)), arg_1.b);
    let var_2 = global3[_wgslsmith_index_u32(global0.d.x, 11u)];
    global4 = firstLeadingBit(var_2.d);
    return abs(global0.d) | var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1615f, all(global2[_wgslsmith_index_u32(abs(0u), 18u)]), global4.zx, abs(~func_5(_wgslsmith_f_op_f32(func_1(true, Struct_1(global0.a, true, global0.d.xw, global0.d))), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.c.x, 4294967295u), 11u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -244f)), 0u)));
    let var_1 = 29549u;
    var var_2 = vec4<f32>(692f, 2185f, -1170f, global0.a);
    global2 = array<vec4<bool>, 18>();
    var var_3 = u_input.c;
    var var_4 = Struct_1(1000f, true, global4.yw, _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(var_0.c.x), 1u), 30076u, global0.c.x, 1u), max(vec4<u32>(~60179u, ~4581u, 1u, 1u), ~func_5(-1000f, Struct_1(var_0.a, global1.x, global0.c, var_0.d), vec2<f32>(var_2.x, 1000f), 51760u))));
    let var_5 = global3[_wgslsmith_index_u32(firstLeadingBit(1u), 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(0i, -_wgslsmith_mod_i32(0i, -9656i)), (vec3<i32>(-1i) * -vec3<i32>(-6136i, -31397i, -50440i)) ^ -abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 0i, -49832i), vec3<i32>(-78835i, u_input.a.x, 2147483647i))), countOneBits(_wgslsmith_mod_vec4_u32(~(var_4.d >> (var_5.d % vec4<u32>(32u))), max(vec4<u32>(0u, var_5.d.x, var_1, 20865u), ~vec4<u32>(21633u, var_5.c.x, var_0.d.x, var_4.c.x)))), -_wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(-1i, u_input.a.x)) | vec2<i32>(abs(u_input.a.x), 2147483647i), 4294967295u);
}

