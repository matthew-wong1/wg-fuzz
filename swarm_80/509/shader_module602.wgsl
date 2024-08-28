struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: u32,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_2 = Struct_2(47566u, Struct_1(vec2<u32>(30610u, 52992u), false), vec4<bool>(false, true, false, false), Struct_1(vec2<u32>(37746u, 82281u), false));

var<private> global2: array<bool, 22>;

var<private> global3: Struct_3 = Struct_3(false, -540f, vec3<i32>(0i, -557i, i32(-2147483648)), true, Struct_1(vec2<u32>(9647u, 1u), true));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> u32 {
    let var_0 = global3.e;
    var var_1 = 13859u;
    global2 = array<bool, 22>();
    var var_2 = -vec2<i32>(~(i32(-1i) * -2147483647i), _wgslsmith_add_i32(-u_input.b.x, u_input.b.x)) >> (vec2<u32>(var_0.a.x, 0u) % vec2<u32>(32u));
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(-8857i, global3.c.x, global3.c.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-45199i, u_input.c), -global3.c.x, 5614i), -var_2.x)), ~(select(u_input.b, vec4<i32>(-1i, global3.c.x, global3.c.x, u_input.b.x), vec4<bool>(global2[_wgslsmith_index_u32(0u, 22u)], var_0.b, global1.b.b, var_0.b)) & -u_input.b) | vec4<i32>(~reverseBits(-39838i), global3.c.x << (~42030u % 32u), -global3.c.x, _wgslsmith_dot_vec3_i32(u_input.b.xzy << (vec3<u32>(u_input.a, 1u, 19885u) % vec3<u32>(32u)), vec3<i32>(u_input.c, var_2.x, u_input.c))));
    return 54534u;
}

fn func_3(arg_0: f32) -> vec3<f32> {
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(min(_wgslsmith_dot_vec2_i32(global3.c.xz >> (global1.b.a % vec2<u32>(32u)), ~vec2<i32>(u_input.c, -1i)), -_wgslsmith_add_i32(u_input.b.x, 8395i)), global3.c.x), -1i, global3.c.x);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(452f, 1166f, -385f), vec3<f32>(arg_0, -248f, 2086f), global3.e.b)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(948f, global3.b, global0.x) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 1028f, -722f), vec3<f32>(arg_0, -598f, -937f))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global0.x, -1221f), vec3<f32>(331f, global3.b, -1051f)))), vec3<f32>(_wgslsmith_f_op_f32(1286f * arg_0), -284f, -315f))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-global3.b), arg_0, _wgslsmith_f_op_f32(ceil(global0.x)))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.b, -809f, arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(-959f, -1869f, 210f) - vec3<f32>(684f, 1033f, 472f)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 161f, global0.x) * vec3<f32>(921f, -304f, 580f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1071f, -246f, -881f))) + vec3<f32>(arg_0, 1067f, 1150f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_0, -805f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(278f, -439f, -306f))), any(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 22u)], false, false), vec3<bool>(global2[_wgslsmith_index_u32(global3.e.a.x, 22u)], true, global1.b.b), global3.d)))))));
    let var_1 = 332f;
    var var_2 = global2[_wgslsmith_index_u32(21643u, 22u)];
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, global3.b, _wgslsmith_f_op_f32(ceil(var_1)))) + vec3<f32>(var_1, global3.b, _wgslsmith_f_op_f32(global3.b + _wgslsmith_f_op_f32(-arg_0)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.b))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -485f) * arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-548f - var_1) + _wgslsmith_f_op_f32(select(var_1, 403f, false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -883f)))), false));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>) -> vec3<f32> {
    var var_0 = -global3.c.x;
    var var_1 = vec3<u32>(func_2(), 4294967295u, abs(u_input.a));
    var var_2 = Struct_4(true, Struct_3(all(vec2<bool>(true, -15252i != u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(937f + -379f), _wgslsmith_f_op_f32(exp2(global3.b)))), vec3<i32>(-1i, u_input.c, firstTrailingBit(i32(-1i) * -37943i)), true, global3.e), ~(~_wgslsmith_mod_u32(global3.e.a.x ^ var_1.x, 27152u)), vec2<f32>(-100f, arg_0.x));
    let var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, var_2.b.b, 378f, var_2.d.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(516f, global3.b, var_2.d.x, 235f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(743f, -1438f, -185f, -996f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(402f, global0.x, var_2.b.b, arg_0.x)))))));
    let var_4 = _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(arg_1.x, global3.e.a.x, 36142u, 6125u)), 5951u, ~21482u) & select(vec3<u32>(global3.e.a.x, u_input.a, global3.e.a.x), _wgslsmith_clamp_vec3_u32(arg_1.ywx, vec3<u32>(u_input.a, 0u, 74960u), arg_1.xxw), all(global1.c.xy)), arg_1.wzw, arg_1.yyw), vec3<u32>(1u, _wgslsmith_add_u32(~47479u << (~u_input.a % 32u), 1u), ~var_1.x));
    return _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(floor(var_2.b.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(-17810i, u_input.c);
    var_0 = -firstTrailingBit(-33497i << (u_input.a % 32u));
    global3 = Struct_3(!(!(!(global0.x >= global3.b))), _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(-622f * _wgslsmith_f_op_f32(trunc(-813f))))), _wgslsmith_mod_vec3_i32(abs(select(global3.c, u_input.b.zzy, select(global1.c.xxx, vec3<bool>(global2[_wgslsmith_index_u32(global1.b.a.x, 22u)], true, true), global3.a))), (_wgslsmith_div_vec3_i32(vec3<i32>(global3.c.x, global3.c.x, u_input.b.x), global3.c) | -global3.c) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(37938i, -75447i, global3.c.x), global3.c)), true, global1.b);
    let var_1 = false;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2363f, 136f)) + _wgslsmith_f_op_f32(exp2(global3.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(451f, -203f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1499f, global3.b, _wgslsmith_f_op_f32(f32(-1f) * -1179f)) - _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(336f, global0.x, global3.b)), ~vec4<u32>(4294967295u, 11482u, 1u, u_input.a))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(857f, -638f, 703f)))));
    var var_2 = Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(116334u, 4294967295u, reverseBits(4294967295u), _wgslsmith_mult_u32(u_input.a, global3.e.a.x)), vec4<u32>(abs(1u), ~1945u, _wgslsmith_dot_vec2_u32(global1.d.a, global1.b.a), ~global1.b.a.x)), func_2()), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(global0.yx - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -1388f), global0.xx))) + vec2<f32>(-2204f, _wgslsmith_div_f32(-201f, 240f)))));
}

