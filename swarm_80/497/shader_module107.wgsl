struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4>;

var<private> global1: vec2<bool>;

var<private> global2: Struct_2;

var<private> global3: Struct_1 = Struct_1(false, vec3<bool>(true, true, true), vec4<f32>(-1611f, -469f, -680f, 665f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<bool> {
    var var_0 = 473f;
    global2 = Struct_2(false || !(!global2.a));
    var var_1 = select(vec4<bool>(all(select(vec3<bool>(global2.a, false, true), global3.b, vec3<bool>(global3.a, true, true))) & false, false, global2.a, !(all(global3.b) && global2.a)), !select(select(vec4<bool>(false, global2.a, global1.x, global2.a), vec4<bool>(true, global2.a, false, true), global2.a), !(!vec4<bool>(false, false, global3.a, false)), select(!vec4<bool>(global2.a, false, global3.a, global1.x), vec4<bool>(global3.b.x, global1.x, true, global2.a), global2.a)), vec4<bool>(global3.b.x, any(!vec2<bool>(global1.x, true)), _wgslsmith_f_op_f32(abs(global3.c.x)) >= global3.c.x, all(global3.b)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c.x, global3.c.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global3.c.x), -187f) * vec2<f32>(global3.c.x, global3.c.x))));
    var_2 = global3.c.zz;
    return !vec4<bool>(_wgslsmith_dot_vec3_i32(u_input.b | vec3<i32>(2147483647i, u_input.b.x, 3235i), countOneBits(vec3<i32>(u_input.c, u_input.c, u_input.b.x))) >= (~(-37948i) | (u_input.c | u_input.c)), !all(!vec4<bool>(global2.a, false, true, true)), any(!(!vec4<bool>(global2.a, global3.a, true, global1.x))), all(select(vec4<bool>(global2.a, global1.x, true, global3.b.x), select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(global2.a, global2.a, true, global3.a), false), var_1.x)));
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_1(true, vec3<bool>(u_input.e < (u_input.e | _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(u_input.e, 4u)], vec4<u32>(4382u, 1u, 1u, 1u))), !global2.a, -(~u_input.c) < min(abs(u_input.b.x), i32(-1i) * -51499i)), vec4<f32>(1044f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.c.x))))), 498f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)))));
    var_0 = Struct_1(all(!func_3()) & !(!var_0.a), select(var_0.b, select(global3.b, vec3<bool>(func_3().x, func_3().x, true), func_3().zzz), vec3<bool>(true, all(global3.b), !global1.x || true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.x, _wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(-global3.c.x), -282f) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.c.x, var_0.c.x, var_0.c.x, var_0.c.x), vec4<f32>(392f, -1046f, 1559f, -1000f), vec4<bool>(true, arg_0, global2.a, true)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global3.c.x)), -401f, _wgslsmith_f_op_f32(trunc(var_0.c.x)), 2343f))));
    var var_1 = true || !(!var_0.b.x);
    global1 = !vec2<bool>(select(countOneBits(-23396i) == _wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(23487i, -1i)), func_3().x, true), false);
    var var_2 = ~min(select(u_input.b, ~u_input.b, global3.b.x), -reverseBits(u_input.b));
    return Struct_2(!global1.x | false);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_1.c.wzz, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(global3.c.x, 428f, 481f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(196f, global3.c.x, -1777f))))))));
    global3 = Struct_1(func_3().x, select(global3.b, !arg_1.b, !(!arg_0.a)), vec4<f32>(-164f, _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-164f, var_0.x)))), var_0.x));
    global1 = arg_1.b.xx;
    var var_1 = Struct_1(!(!arg_1.b.x), vec3<bool>(any(global3.b.xz), !arg_0.a, all(vec3<bool>(select(global2.a, false, false), all(global3.b), arg_1.a))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -653f, var_0.x, 370f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global3.c, arg_1.c)))))));
    let var_2 = Struct_1(arg_1.b.x, !(!(!vec3<bool>(true, var_1.a, arg_1.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.c.x * arg_1.c.x), 1742f, _wgslsmith_f_op_f32(round(global3.c.x)), global3.c.x)) - var_1.c));
    return true;
}

fn func_1() -> i32 {
    global2 = Struct_2(func_4(func_2(global3.b.x, u_input.c), Struct_1(!global1.x == (true != global1.x), !select(vec3<bool>(global3.b.x, true, global2.a), vec3<bool>(true, global2.a, true), global1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(652f, global3.c.x, global3.c.x, -921f) - vec4<f32>(global3.c.x, -819f, global3.c.x, global3.c.x))))));
    var var_0 = func_2(true | all(select(vec4<bool>(global2.a, global1.x, global3.a, global2.a), vec4<bool>(true, true, true, true), func_3().x)), (select(2147483647i, _wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(1i, u_input.c)), global2.a) | _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, -2147483647i, 82020i), u_input.b.x | u_input.b.x)) >> (~(~u_input.a.x) % 32u));
    var var_1 = global3.c.x;
    var var_2 = Struct_1(func_2(global3.a, ~u_input.c >> (max(30517u, 58395u) % 32u)).a || false, !(!func_3().wwz), _wgslsmith_f_op_vec4_f32(-global3.c));
    let var_3 = func_2(false, 0i & firstTrailingBit(61128i));
    return _wgslsmith_clamp_i32(-17046i, _wgslsmith_clamp_i32(~(~(-21312i)), select(u_input.b.x, _wgslsmith_mult_i32(u_input.c, ~u_input.c), global2.a | select(false, var_3.a, true)), -1517i), _wgslsmith_dot_vec3_i32(vec3<i32>(select(u_input.b.x, 1i, false), firstLeadingBit(1i), _wgslsmith_dot_vec3_i32(u_input.b, firstLeadingBit(vec3<i32>(u_input.b.x, u_input.b.x, -13631i)))), _wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(abs(u_input.b.x), -16639i, ~u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~func_1());
    let x = u_input.a;
    s_output = StorageBuffer(-(vec4<i32>(0i, ~u_input.b.x, u_input.c, u_input.c) << (vec4<u32>(firstLeadingBit(u_input.e), 1u, _wgslsmith_div_u32(u_input.d.x, u_input.e), max(4294967295u, u_input.a.x)) % vec4<u32>(32u))));
}

