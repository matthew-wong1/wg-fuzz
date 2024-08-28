struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool;

var<private> global2: array<Struct_4, 28>;

var<private> global3: Struct_2;

var<private> global4: array<u32, 9>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_1(!(758f <= _wgslsmith_f_op_f32(-926f * _wgslsmith_div_f32(global3.e.x, arg_0.c))), -1844f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(203f))))))), _wgslsmith_clamp_vec3_i32(~(abs(arg_0.a.d) & (vec3<i32>(53009i, arg_0.a.d.x, global3.a.d.x) >> (vec3<u32>(0u, u_input.a, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 9u)], 9u)]) % vec3<u32>(32u)))), global3.a.d, global3.a.d), any(select(select(global3.b.yx, global3.d.yw, select(global3.b.wx, global3.b.zx, global3.b.yw)), vec2<bool>(false, false), global3.c.a)));
    var var_1 = Struct_2(Struct_1(!var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-769f, var_0.b)), -534f, _wgslsmith_sub_vec3_i32(-var_0.d, vec3<i32>(~arg_0.b, ~(-16724i), abs(0i))), true), !select(global3.b, select(global3.b, vec4<bool>(true, true, true, true), global3.b), !global3.d), Struct_1(arg_0.a.c != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1022f))), _wgslsmith_f_op_f32(global3.e.x + _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(floor(var_0.b)))), var_0.b, _wgslsmith_add_vec3_i32(abs(countOneBits(arg_0.a.d)), min(abs(vec3<i32>(arg_0.b, -15924i, var_0.d.x)), global3.c.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1095f, global3.e.x))) != _wgslsmith_f_op_f32(-arg_0.c)), vec4<bool>(any(select(select(vec2<bool>(false, global3.a.e), global3.b.wy, global3.d.yw), vec2<bool>(true, global3.c.e), !var_0.e)), false, arg_0.a.a, global3.b.x & all(select(global3.d.yy, vec2<bool>(false, global3.d.x), false))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), -894f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1175f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.b, _wgslsmith_f_op_f32(-arg_0.a.c)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(789f)) + global3.e.x))));
    let var_2 = Struct_5(4294967295u, global3.b);
    global3 = Struct_2(arg_0.a, !select(global3.b, select(!vec4<bool>(global3.a.a, true, true, false), !vec4<bool>(true, false, false, var_1.a.a), !var_2.b), select(!vec4<bool>(var_2.b.x, global3.b.x, false, var_1.a.e), select(var_2.b, var_1.d, false), var_0.c <= arg_0.a.c)), Struct_1(true, -383f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.e.x, _wgslsmith_f_op_f32(-global3.a.b)))), select(-(~vec3<i32>(var_0.d.x, 0i, -8703i)), _wgslsmith_div_vec3_i32(abs(vec3<i32>(-6700i, var_1.a.d.x, global3.c.d.x)), vec3<i32>(-65469i, var_0.d.x, -14252i)), !select(vec3<bool>(var_1.c.a, var_1.c.a, false), var_2.b.wzz, true)), true), var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(827f, 792f, var_0.b, arg_0.a.b), _wgslsmith_div_vec4_f32(var_1.e, global3.e), global3.b)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1060f, var_1.e.x, -470f, -334f) * global3.e))), true))));
    let var_3 = Struct_2(global3.c, select(select(select(var_1.b, !vec4<bool>(true, var_0.e, var_2.b.x, var_1.c.e), select(global3.b, vec4<bool>(true, arg_0.a.a, false, false), var_1.b)), select(select(vec4<bool>(global3.b.x, arg_0.a.e, true, true), vec4<bool>(global3.a.e, true, false, var_0.a), true), vec4<bool>(false, false, false, var_1.b.x), 1938f == var_1.c.b), select(select(vec4<bool>(var_1.b.x, var_0.e, var_0.e, global3.d.x), var_1.d, false), !var_1.d, -39269i == global3.c.d.x)), select(!(!vec4<bool>(false, var_0.a, true, true)), vec4<bool>(arg_0.a.a, true, !global3.b.x, false), !var_1.d), var_1.b), Struct_1(var_1.d.x, _wgslsmith_f_op_f32(max(-1000f, -546f)), arg_0.c, -_wgslsmith_mod_vec3_i32(global3.c.d, -vec3<i32>(var_1.c.d.x, var_0.d.x, -2147483647i)), false), vec4<bool>(var_0.e, !var_1.c.e, var_0.a, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.e + vec4<f32>(var_0.c, arg_0.a.c, -194f, 715f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(521f, arg_0.c, var_0.c, 1129f))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_1.e, vec4<f32>(global3.a.c, arg_0.c, var_1.c.c, var_0.c))))))));
    return -420f;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(-global3.c.c);
    let var_0 = global3.e.x != -271f;
    global4 = array<u32, 9>();
    let var_1 = select(global3.c.a || true, (~global3.a.d.x == _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global3.a.d, global3.a.d), select(0i, global3.a.d.x, global3.c.e))) != (-211f != _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(false, global3.a.b, 1000f, vec3<i32>(-13122i, 62567i, global3.c.d.x), var_0), -1i, 1074f)))), global3.a.e);
    let var_2 = vec2<u32>(abs(global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a, _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(5489u, 9u)], 0u)), 9u)]), 6291u);
    return !(!select(select(select(global3.d, global3.d, vec4<bool>(var_1, false, var_0, global3.d.x)), vec4<bool>(false, var_1, var_0, false), global3.c.a || var_0), select(!vec4<bool>(var_1, true, var_0, false), !global3.d, all(global3.d)), global3.a.e && all(global3.b.xwx)));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: f32) -> f32 {
    let var_0 = arg_0;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -660f)), arg_3, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.a.a.c)) * _wgslsmith_f_op_f32(f32(-1f) * -248f)), _wgslsmith_f_op_f32(109f - -1118f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_2.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1163f))))));
    global2 = array<Struct_4, 28>();
    let var_2 = ~firstTrailingBit(-1i);
    let var_3 = vec2<i32>(_wgslsmith_mult_i32(reverseBits(var_2), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a.b, arg_2.a.a.d.x, arg_2.a.a.d.x), vec3<i32>(-41785i, 10971i, -43361i))) >> (firstTrailingBit(u_input.a) % 32u), -2147483647i) | -vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.a.d.x, var_2), ~vec2<i32>(global3.c.d.x, global3.c.d.x)));
    return global3.a.b;
}

fn func_1() -> bool {
    global4 = array<u32, 9>();
    var var_0 = false;
    let var_1 = Struct_3(Struct_1(true && all(global3.d.zwy), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global3.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.a.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.c.b)))), -(_wgslsmith_mod_vec3_i32(vec3<i32>(global3.c.d.x, 1i, global3.c.d.x), vec3<i32>(1846i, global3.c.d.x, 14022i)) ^ global3.c.d), true), -2147483647i, global3.a.b);
    var var_2 = _wgslsmith_dot_vec2_i32(var_1.a.d.xx, global3.a.d.zy);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-506f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-545f - 238f), _wgslsmith_f_op_f32(-global3.c.b))), var_1.c), _wgslsmith_f_op_f32(func_4(Struct_5(~36276u, global3.d), select(global3.b, select(global3.b, global3.d, func_2(global4[_wgslsmith_index_u32(u_input.a, 9u)])), !select(vec4<bool>(true, var_1.a.a, false, false), vec4<bool>(false, false, false, global3.c.e), global3.c.e)), Struct_4(Struct_3(var_1.a, -var_1.a.d.x, _wgslsmith_f_op_f32(global3.e.x + -2590f))), _wgslsmith_f_op_f32(-global3.a.b))));
    return global3.c.e;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = Struct_5(global4[_wgslsmith_index_u32(~(~(~u_input.a)), 9u)], select(global3.d, vec4<bool>((-2147483647i < global3.c.d.x) || true, func_1(), false, global3.a.a), global3.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_0.a, u_input.a, 4294967295u) | vec4<u32>(global4[_wgslsmith_index_u32(1u, 9u)], var_0.a, 0u, u_input.a), ~vec4<u32>(48822u, 1u, global4[_wgslsmith_index_u32(var_0.a, 9u)], 17309u)) | vec4<u32>(countOneBits(1u), ~(~var_0.a), 4294967295u, countOneBits(~1u)), _wgslsmith_add_i32(firstTrailingBit(~max(global3.c.d.x, global3.a.d.x)), _wgslsmith_div_i32(~0i, global3.a.d.x << (13586u % 32u))));
}

