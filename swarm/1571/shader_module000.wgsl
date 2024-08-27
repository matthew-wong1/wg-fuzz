struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 19>;

var<private> global1: vec4<u32>;

var<private> global2: Struct_5 = Struct_5(Struct_4(vec4<f32>(1165f, -180f, -1709f, -525f), vec3<u32>(2818u, 33840u, 0u)), Struct_3(Struct_1(-591f, vec2<f32>(-580f, 1434f), vec4<f32>(-478f, 770f, 656f, 990f), false, vec2<f32>(-460f, 626f)), Struct_2(Struct_1(178f, vec2<f32>(-423f, -1000f), vec4<f32>(272f, -1173f, -1000f, 216f), true, vec2<f32>(-314f, 352f)), Struct_1(-631f, vec2<f32>(-352f, 1354f), vec4<f32>(-338f, 410f, 584f, -673f), false, vec2<f32>(1213f, -722f)), 19295i, -240f, Struct_1(327f, vec2<f32>(-1000f, -908f), vec4<f32>(-1303f, 712f, 1306f, -1334f), false, vec2<f32>(1220f, -1000f))), vec2<bool>(true, true), vec2<u32>(59150u, 0u), true), vec4<bool>(false, false, true, false), 4294967295u);

var<private> global3: array<Struct_1, 12>;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    global0 = array<vec4<bool>, 19>();
    var var_0 = ~global2.b.b.c;
    let var_1 = global2.b;
    var var_2 = false;
    let var_3 = 0u;
    return _wgslsmith_f_op_f32(-var_1.b.d);
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = Struct_2(Struct_1(global2.a.a.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - global2.a.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.a.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.a.x, _wgslsmith_f_op_f32(-global2.b.b.d), -955f, _wgslsmith_f_op_f32(-global2.a.a.x))), false, vec2<f32>(_wgslsmith_f_op_f32(exp2(global2.b.a.a)), _wgslsmith_f_op_f32(min(global2.b.b.a.e.x, -1848f)))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.a.a.x, 687f)) + _wgslsmith_f_op_f32(global2.a.a.x - global2.a.a.x)), 1143f)), vec2<f32>(_wgslsmith_div_f32(global2.a.a.x, 1000f), 409f), _wgslsmith_f_op_vec4_f32(global2.a.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(317f, global2.a.a.x, global2.b.a.b.x, 780f)) * _wgslsmith_div_vec4_f32(vec4<f32>(global2.b.a.b.x, -1960f, 213f, -795f), global2.b.b.b.c))), global2.b.b.a.d, vec2<f32>(global2.b.a.a, -957f)), max(-global2.b.b.c, global2.b.b.c), _wgslsmith_f_op_f32(f32(-1f) * -229f), global2.b.b.a);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(var_0.e.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.a.x), _wgslsmith_f_op_f32(-1830f + _wgslsmith_f_op_f32(global2.a.a.x - global2.b.a.b.x)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global2.b.b.a.b - _wgslsmith_div_vec2_f32(vec2<f32>(109f, 920f), var_0.b.b)), vec2<f32>(var_0.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d * -568f) - var_0.e.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.a.a.x - -1038f), _wgslsmith_f_op_f32(-global2.b.b.e.b.x), -456f, _wgslsmith_f_op_f32(select(var_0.b.b.x, 1278f, true))))), any(vec4<bool>(!any(vec4<bool>(global2.b.b.a.d, true, false, var_0.a.d)), false, true, global2.b.c.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1480f) * _wgslsmith_f_op_f32(-1121f * global2.b.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(397f, var_0.e.b.x)))))));
    let var_2 = global2.b.b;
    global2 = Struct_5(Struct_4(global2.a.a, _wgslsmith_clamp_vec3_u32(global2.a.b, vec3<u32>(~global1.x, abs(0u), _wgslsmith_mod_u32(19829u, 4294967295u)), ~global1.ywx)), Struct_3(global2.b.a, var_0, select(vec2<bool>(all(global2.c.xzz), true), global2.b.c, vec2<bool>(global2.b.c.x, true)), ~vec2<u32>(firstTrailingBit(31812u), u_input.a), true || !(!var_0.e.d)), vec4<bool>(false == var_1.d, var_1.d, true && var_1.d, true), ~(~arg_0));
    var var_3 = global2.b.b;
    return _wgslsmith_f_op_f32(-var_3.b.e.x);
}

fn func_1() -> Struct_5 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_2(~(~(1u & global1.x)))), global2.b.b.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(393f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global2.a.a.x)), 1088f)))));
    var var_1 = global2.a;
    global2 = Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-449f, var_0.x, -1360f, var_0.x)))), var_1.b), Struct_3(Struct_1(var_1.a.x, global2.b.a.b, _wgslsmith_f_op_vec4_f32(var_1.a * _wgslsmith_f_op_vec4_f32(global2.a.a + vec4<f32>(var_0.x, global2.a.a.x, global2.b.a.c.x, var_0.x))), global2.c.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), global2.b.a.e, vec2<bool>(global2.c.x, true))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2236f, 570f))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3()), var_1.a.xw, var_1.a, 220f >= var_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1603f, 495f))), global3[_wgslsmith_index_u32(countOneBits(33241u), 12u)], -43820i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1073f)), Struct_1(572f, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x) + vec2<f32>(global2.a.a.x, -117f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.x, -1791f, -832f)), global2.c.x, global2.b.a.e)), vec2<bool>(all(select(global0[_wgslsmith_index_u32(0u, 19u)], vec4<bool>(false, global2.b.e, false, global2.b.a.d), global2.b.a.d)), false), global1.zw << (~(~global2.b.d) % vec2<u32>(32u)), global2.c.x), select(vec4<bool>(~global2.b.b.c > 2147483647i, _wgslsmith_f_op_f32(select(1000f, -760f, global2.c.x)) >= -774f, any(vec3<bool>(global2.c.x, true, false)), true != global2.c.x), !global0[_wgslsmith_index_u32(0u, 19u)], !any(vec4<bool>(true, false, true, global2.b.e))), global1.x);
    global4 = _wgslsmith_dot_vec2_u32(var_1.b.xx, vec2<u32>(_wgslsmith_add_u32(var_1.b.x, global2.d), ~(0u >> (var_1.b.x % 32u)))) ^ 10573u;
    var var_2 = vec4<f32>(var_0.x, 899f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -273f), -259f))));
    return Struct_5(global2.a, Struct_3(global2.b.b.e, Struct_2(global3[_wgslsmith_index_u32(~1u, 12u)], global2.b.a, -countOneBits(global2.b.b.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(639f + 730f)), Struct_1(_wgslsmith_f_op_f32(ceil(-2646f)), vec2<f32>(-1006f, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -1737f, var_2.x, -553f)), all(vec3<bool>(false, global2.c.x, global2.b.e)), vec2<f32>(global2.b.a.c.x, var_1.a.x))), !(!select(global2.b.c, global2.b.c, global2.c.x)), min(abs(_wgslsmith_add_vec2_u32(vec2<u32>(global1.x, u_input.a), vec2<u32>(4294967295u, 85126u))), global2.b.d), all(global2.c.zyy)), !select(select(global0[_wgslsmith_index_u32(119410u, 19u)], select(vec4<bool>(global2.b.b.e.d, false, global2.c.x, global2.b.c.x), global2.c, global2.b.c.x), global0[_wgslsmith_index_u32(global1.x >> (u_input.a % 32u), 19u)]), global0[_wgslsmith_index_u32(firstTrailingBit(1u), 19u)], true), _wgslsmith_mult_u32(4294967295u, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global3 = array<Struct_1, 12>();
    global2 = func_1();
    global2 = Struct_5(Struct_4(global2.b.b.b.c, global1.xwz), Struct_3(func_1().b.b.a, Struct_2(Struct_1(global2.a.a.x, global2.a.a.yx, _wgslsmith_f_op_vec4_f32(global2.a.a * global2.b.a.c), false, global2.a.a.zy), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -417f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.b.b.a.a, -624f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.b.b.b.x, global2.b.a.b.x, global2.b.a.a, 1566f)), false, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-115f, global2.b.a.e.x)))), _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, -33343i), 1i), _wgslsmith_f_op_f32(func_2(1u >> (global2.a.b.x % 32u))), global3[_wgslsmith_index_u32(1u, 12u)]), !func_1().c.ww, max(global1.yz, global1.yw), !global2.b.a.d), !(!global2.c), 0u);
    global0 = array<vec4<bool>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(reverseBits(abs(u_input.a)), countOneBits(49368u)), vec2<i32>(1i, global2.b.b.c), 1u, _wgslsmith_div_f32(1000f, -979f));
}

