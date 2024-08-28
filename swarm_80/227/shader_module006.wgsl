struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_3,
    d: Struct_1,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: array<vec4<u32>, 11>;

var<private> global2: vec2<f32> = vec2<f32>(321f, 1000f);

var<private> global3: vec3<f32> = vec3<f32>(-2013f, 1136f, -342f);

var<private> global4: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(35719u, vec2<u32>(4294967295u, 0u)), Struct_1(38172u, vec2<u32>(0u, 4294967295u)), Struct_1(4294967295u, vec2<u32>(1u, 28456u)), Struct_1(64353u, vec2<u32>(65862u, 41400u)), Struct_1(4294967295u, vec2<u32>(0u, 4294967295u)), Struct_1(47491u, vec2<u32>(109430u, 30231u)), Struct_1(50855u, vec2<u32>(1412u, 94010u)), Struct_1(4294967295u, vec2<u32>(1u, 126615u)), Struct_1(18391u, vec2<u32>(18337u, 4294967295u)), Struct_1(4294967295u, vec2<u32>(0u, 1u)), Struct_1(30823u, vec2<u32>(61565u, 24369u)), Struct_1(50211u, vec2<u32>(41986u, 1u)), Struct_1(1u, vec2<u32>(14408u, 47462u)), Struct_1(18398u, vec2<u32>(34338u, 39713u)), Struct_1(1u, vec2<u32>(4294967295u, 4294967295u)), Struct_1(4294967295u, vec2<u32>(43652u, 5202u)), Struct_1(44524u, vec2<u32>(4294967295u, 48623u)), Struct_1(48433u, vec2<u32>(76045u, 12445u)), Struct_1(597u, vec2<u32>(21635u, 20081u)), Struct_1(0u, vec2<u32>(4294967295u, 1u)), Struct_1(78996u, vec2<u32>(19225u, 4294967295u)), Struct_1(90653u, vec2<u32>(13044u, 1u)), Struct_1(4294967295u, vec2<u32>(1u, 1u)), Struct_1(9933u, vec2<u32>(4294967295u, 52337u)), Struct_1(89758u, vec2<u32>(0u, 15886u)), Struct_1(18287u, vec2<u32>(0u, 25544u)), Struct_1(1u, vec2<u32>(26515u, 4294967295u)), Struct_1(18736u, vec2<u32>(1u, 40452u)), Struct_1(47826u, vec2<u32>(0u, 1u)), Struct_1(4294967295u, vec2<u32>(4294967295u, 1u)), Struct_1(1u, vec2<u32>(50874u, 52074u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    let var_0 = vec3<i32>(1i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.e, _wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.a), firstTrailingBit(u_input.e))), 51064i), ~(-2147483647i << (global0[_wgslsmith_index_u32(78164u, 8u)] % 32u)));
    let var_1 = vec3<bool>(true, !(!(~59693i <= _wgslsmith_add_i32(u_input.a, -2147483647i))), all(vec3<bool>(true, true, true)) && !any(vec2<bool>(true, false)));
    global0 = array<u32, 8>();
    global2 = vec2<f32>(552f, 447f);
    global4 = array<Struct_1, 31>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1966f)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(ceil(381f)));
    global0 = array<u32, 8>();
    global4 = array<Struct_1, 31>();
    var_0 = -471f;
    global3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 656f, _wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-554f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(-215f, arg_0)), vec3<f32>(global2.x, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(round(-453f))), select(vec3<bool>(arg_1, arg_1, arg_1), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, true, true), vec3<bool>(true, true, arg_1)), !vec3<bool>(arg_1, arg_1, arg_1)))) - vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.x), -372f, false)), -227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, -1099f, false)) - _wgslsmith_f_op_f32(f32(-1f) * -1021f)))));
    return Struct_2(Struct_1(u_input.b.x, u_input.c.xy), !(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 8u)] < u_input.c.x, arg_1, !arg_1)), reverseBits(_wgslsmith_div_i32(-u_input.e.x, u_input.d)) << (_wgslsmith_div_u32(u_input.b.x, 4294967295u) % 32u));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_5) -> f32 {
    global2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.xx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1694f, global2.x)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1213f, arg_2.e.a))), vec2<f32>(_wgslsmith_f_op_f32(sign(arg_2.e.b)), 1000f)));
    let var_0 = arg_2.e;
    var var_1 = arg_2.c;
    let var_2 = func_2(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.x, var_0.b)) - _wgslsmith_f_op_f32(exp2(global3.x))) + var_0.a) != _wgslsmith_f_op_f32(-arg_2.e.b), _wgslsmith_f_op_vec2_f32(-global3.xz)).b.zy;
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * arg_2.e.b), _wgslsmith_div_f32(global3.x, global3.x)), arg_2.e.a, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.b, 272f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -256f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1411f + var_0.b) - _wgslsmith_f_op_f32(-arg_2.e.a)), 439f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))))));
    return _wgslsmith_f_op_f32(global3.x * -2017f);
}

fn func_1() -> Struct_3 {
    global1 = array<vec4<u32>, 11>();
    var var_0 = i32(-1i) * -71458i;
    var var_1 = vec4<f32>(global2.x, global3.x, -496f, -557f);
    var var_2 = _wgslsmith_f_op_f32(func_4(false, func_2(1417f, true, global3.zx), Struct_5(-_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.d, 16979i), 24724i), true, Struct_3(all(func_2(global2.x, true, var_1.wz).b.zz), func_2(_wgslsmith_div_f32(global3.x, 1870f), any(vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.x, global2.x)))), Struct_1(1u, u_input.b)), func_2(_wgslsmith_f_op_f32(max(var_1.x, global3.x)), !(-23212i < u_input.e.x), global3.yz).a, Struct_4(-768f, 1061f))));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(var_1.yw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.zx + var_1.xw) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, var_1.x)))))));
    return Struct_3(any(vec4<bool>(true, true, true, true)), func_2(global2.x, true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.zx * var_1.yw), global3.zx, true))), global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x | global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 8u)], 31u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(max(global3.x, 1510f)), 2695f))))));
    let var_0 = func_1();
    var var_1 = Struct_3(select(func_1().b.b.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 8u)], u_input.c.x), global0[_wgslsmith_index_u32(u_input.b.x << (4294967295u % 32u), 8u)]) != 1u, var_0.a), func_2(global2.x, all(select(select(vec4<bool>(var_0.a, false, var_0.b.b.x, var_0.a), vec4<bool>(var_0.b.b.x, true, var_0.b.b.x, false), var_0.b.b.x), select(vec4<bool>(true, true, var_0.a, false), vec4<bool>(false, true, true, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, false)), !vec4<bool>(false, var_0.b.b.x, false, var_0.a))), vec2<f32>(_wgslsmith_div_f32(-1295f, 222f), -1484f)), func_2(-476f, all(!vec3<bool>(var_0.b.b.x, true, true)) | var_0.b.b.x, vec2<f32>(global2.x, _wgslsmith_f_op_f32(trunc(-1000f)))).a);
    var var_2 = ~(-2147483647i);
    var var_3 = var_0.b.b.x;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, 1403f)), vec3<f32>(global3.x, 203f, global2.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(811f, global3.x, -1029f) * _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global3.x, -1186f), vec3<f32>(-335f, 3046f, global3.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-992f)), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -270f), global2.x, 1737f));
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(var_1.c.a)), vec2<u32>(0u, abs(~reverseBits(var_0.c.a))), var_1.b.a.b ^ var_1.b.a.b, vec2<i32>(func_2(499f, var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_4.yx)))).c, var_0.b.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(func_4(false, func_2(-366f, any(var_1.b.b.yy), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.x, global2.x) + var_4.xx)), Struct_5(1i | var_0.b.c, true, var_0, var_0.b.a, Struct_4(var_4.x, 100f))))));
}

