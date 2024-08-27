struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(4294967295u, vec4<bool>(false, false, true, false), false, vec3<i32>(2147483647i, 26516i, 2147483647i), i32(-2147483648)), Struct_1(1u, vec4<bool>(true, true, true, true), true, vec3<i32>(-2512i, 1i, 33183i), 0i), vec3<f32>(-1044f, 282f, -1811f), vec3<f32>(-1395f, 1426f, -2018f), 32305i);

var<private> global2: array<Struct_2, 4>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<bool>) -> f32 {
    global1 = Struct_2(global1.a, global1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-1471f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2235f + -804f) + -1029f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.c.x)), _wgslsmith_div_f32(593f, 1323f)))), _wgslsmith_f_op_vec3_f32(global1.c - _wgslsmith_f_op_vec3_f32(-global1.c)), abs(max(24890i, global1.a.d.x)));
    let var_0 = Struct_1(_wgslsmith_mod_u32(global1.b.a, select(global1.a.a, _wgslsmith_sub_u32(global1.b.a, global1.b.a) | countOneBits(u_input.b), (arg_2.x & true) && false)), vec4<bool>(max(1u, global1.b.a) > _wgslsmith_clamp_u32(~26460u, select(4294967295u, global1.a.a, false), 8808u), arg_1.x <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), global1.d.x), false, !(!(u_input.b > 4294967295u))), -984f != global0.x, firstTrailingBit(vec3<i32>(1i, -(~global1.e), 39043i)), min(max(~_wgslsmith_mod_i32(2147483647i, u_input.a), -1i), -(~(-1i >> (u_input.b % 32u)))));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1155f, _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(min(global1.c.x, _wgslsmith_f_op_f32(sign(arg_1.x)))))), _wgslsmith_f_op_f32(1f * -841f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -555f), -901f)), _wgslsmith_f_op_f32(-global0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(arg_0 + -922f), _wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_div_f32(arg_0, 1000f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1073f, 738f, arg_0, global0.x), vec4<f32>(global0.x, 1000f, arg_0, 715f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1088f, -1000f, -1427f, 350f) - vec4<f32>(157f, -131f, global1.d.x, global1.d.x)) * vec4<f32>(arg_0, global1.c.x, 1000f, global1.d.x)))));
    global1 = Struct_2(global1.a, global1.b, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 1000f)))))), global1.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.wyy - vec3<f32>(109f, 710f, arg_0)) * global0.xyx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global1.c))), global1.a.b.yxw)) - vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(-arg_0), arg_1.x)), var_0.d.x);
    let var_1 = global2[_wgslsmith_index_u32(u_input.b, 4u)];
    return arg_1.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> i32 {
    let var_0 = true;
    var var_1 = -1118f;
    var var_2 = !(!vec3<bool>(global1.b.c, !(true && global1.b.c), !all(arg_0.b.b.wyx)));
    var var_3 = Struct_1(~37725u, !select(select(select(vec4<bool>(false, global1.a.b.x, true, global1.a.c), arg_0.b.b, vec4<bool>(arg_0.b.c, var_0, false, false)), select(arg_0.a.b, vec4<bool>(false, false, false, global1.a.c), vec4<bool>(var_2.x, false, var_2.x, global1.a.c)), select(vec4<bool>(var_2.x, false, global1.b.b.x, global1.b.b.x), arg_0.b.b, true)), select(!vec4<bool>(false, true, false, var_0), vec4<bool>(var_2.x, false, true, false), !vec4<bool>(var_0, arg_0.b.b.x, var_0, true)), vec4<bool>(arg_0.a.b.x, global1.b.c, var_2.x, all(vec3<bool>(var_2.x, var_2.x, true)))), var_2.x, vec3<i32>(-arg_1.x >> (57075u % 32u), 0i, 13602i), 17510i);
    return _wgslsmith_mult_i32(global1.e, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.e, var_3.d.x, ~(-1i), 1i), vec4<i32>(_wgslsmith_clamp_i32(arg_1.x, 0i, -1335i), reverseBits(37054i), 0i, _wgslsmith_sub_i32(u_input.c, 65454i)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.e, arg_1.x, global1.b.d.x, global1.e), arg_1)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>) -> vec3<f32> {
    global0 = vec4<f32>(global1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), -586f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1449f - global0.x))))), _wgslsmith_f_op_f32(round(-135f)));
    var var_0 = func_4(Struct_2(Struct_1(firstTrailingBit(global1.a.a) << (~0u % 32u), global1.b.b, select(global1.b.b.x, !global1.a.c, false), global1.a.d, 0i << (_wgslsmith_mod_u32(global1.b.a, 4294967295u) % 32u)), global1.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1601f, global1.d.x, global0.x)))), _wgslsmith_f_op_vec3_f32(global1.c + vec3<f32>(_wgslsmith_f_op_f32(func_3(global1.d.x, vec2<f32>(global0.x, global0.x), vec3<bool>(global1.a.c, false, false))), 1135f, global0.x)), _wgslsmith_dot_vec2_i32(global1.b.d.zy, global1.b.d.yz)), max(~vec4<i32>(arg_1.x >> (71141u % 32u), abs(arg_1.x), select(global1.b.e, -1i, global1.a.c), -u_input.a), ~(~(~vec4<i32>(arg_1.x, u_input.c, arg_1.x, 15089i)))));
    let var_1 = select(select(!select(vec2<bool>(true, global1.a.b.x), global1.a.b.xx, vec2<bool>(true, true)), vec2<bool>(all(!vec4<bool>(false, global1.b.b.x, true, global1.b.c)), true), vec2<bool>(global1.a.b.x, true)), global1.a.b.zy, 1000f > _wgslsmith_f_op_f32(-global1.c.x));
    var_0 = reverseBits(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), global1.a.e, global1.e));
    global2 = array<Struct_2, 4>();
    return global0.zww;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    global2 = array<Struct_2, 4>();
    var var_0 = global1.a.b.x;
    let var_1 = Struct_2(Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.a, arg_0.b.a, u_input.b, 4294967295u) & vec4<u32>(u_input.b, 20647u, 7213u, u_input.b), ~vec4<u32>(0u, 662u, 0u, 55929u)), arg_0.a.b, any(global1.a.b.zzy), global1.a.d, -(_wgslsmith_mod_i32(arg_0.a.e, -11593i) >> (_wgslsmith_mod_u32(arg_0.a.a, u_input.b) % 32u))), arg_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.d), vec3<f32>(_wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_f_op_f32(select(131f, 689f, global1.a.b.x)), _wgslsmith_f_op_f32(-global0.x)), global1.b.c))), vec3<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(191f * arg_0.d.x), _wgslsmith_div_f32(-1734f, -1000f))), _wgslsmith_f_op_f32(-arg_0.c.x)), arg_0.a.d.x);
    var_0 = false;
    let var_2 = global2[_wgslsmith_index_u32(0u, 4u)];
    return Struct_1(_wgslsmith_div_u32(~1u, 13912u), select(vec4<bool>(true, true, false, var_1.a.b.x), !(!(!global1.b.b)), !(!arg_0.b.b)), true, firstTrailingBit(vec3<i32>(var_2.b.d.x, (var_1.e & 18293i) ^ var_2.a.d.x, var_1.b.d.x)), 51788i ^ var_2.e);
}

fn func_6(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    global1 = Struct_2(Struct_1(~1u, global1.a.b, any(select(!vec2<bool>(global1.a.b.x, true), select(vec2<bool>(global1.b.c, true), global1.b.b.xx, true), arg_1.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(max(u_input.a, global1.a.e), u_input.c, ~(-10383i)), -vec3<i32>(1i, 1i, -64937i)), arg_2.e), Struct_1(u_input.b, !vec4<bool>(true, true, true, all(arg_2.b.yw)), !(!arg_1.x || (false & arg_1.x)), countOneBits(vec3<i32>(arg_2.e, reverseBits(u_input.c), i32(-1i) * -1i)), -max(global1.a.d.x >> (46389u % 32u), 62342i >> (arg_2.a % 32u))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -130f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x + global0.x)))), global0.x, global1.c.x), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global1.d.x)))), global0.x, _wgslsmith_div_f32(-287f, global0.x)), abs(u_input.c));
    var var_0 = true;
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) + _wgslsmith_f_op_f32(arg_0 - arg_0)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-645f, global0.x) + _wgslsmith_f_op_f32(-global1.d.x))), arg_0, 506f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(476f - global0.x)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, global0.x, 399f, 507f))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-154f, global1.c.x, _wgslsmith_div_f32(global0.x, -1414f), _wgslsmith_f_op_f32(-arg_0))))));
    return Struct_1(_wgslsmith_add_u32(1u, ~(55224u | u_input.b) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(18525u, 53022u), vec2<u32>(arg_2.a, 11934u))), !vec4<bool>(!global1.b.c, 659f != _wgslsmith_f_op_f32(step(618f, arg_0)), any(vec2<bool>(true, true)), arg_2.b.x), true, _wgslsmith_add_vec3_i32(-(~arg_2.d), _wgslsmith_clamp_vec3_i32(arg_2.d, vec3<i32>(39060i, u_input.a, -20660i), ~vec3<i32>(-31830i, 32854i, arg_2.e))) ^ (global1.b.d & _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, global1.e, arg_2.d.x), global1.a.d, vec3<i32>(-2147483647i, 0i, 21394i)), vec3<i32>(6342i, -28895i, global1.e))), 27232i);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(64418u, 4u)];
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(796f)) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-458f * global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-368f * 1110f)), var_0.c.x);
    let var_1 = false;
    let var_2 = ~(~(-1i));
    let var_3 = func_6(_wgslsmith_f_op_f32(floor(var_0.c.x)), vec2<bool>(global1.b.c, var_0.b.b.x), func_5(global2[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, var_0.b.a, 25931u), ~vec3<u32>(var_0.a.a, 4294967295u, 13613u)), ~select(arg_1, vec3<i32>(-2147483647i, global1.b.e, arg_1.x), var_0.a.c))), u_input.a));
    return 1i | func_4(Struct_2(Struct_1(~var_3.a, global1.b.b, true, _wgslsmith_sub_vec3_i32(vec3<i32>(17565i, -56661i, 13300i), vec3<i32>(-2147483647i, -29065i, global1.a.d.x)), ~var_2), func_5(global2[_wgslsmith_index_u32(countOneBits(arg_0.x), 4u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1000f, -850f) - vec3<f32>(var_0.d.x, 1000f, 694f)), func_5(Struct_2(Struct_1(var_0.a.a, var_0.b.b, true, arg_1, global1.a.d.x), var_3, vec3<f32>(798f, 1000f, -638f), vec3<f32>(-744f, 1643f, -491f), u_input.a), vec3<f32>(1685f, global1.d.x, global0.x), var_0.e).d.x), _wgslsmith_div_vec3_f32(vec3<f32>(global1.d.x, global1.c.x, global0.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-621f, global1.d.x, 131f)))), _wgslsmith_f_op_vec3_f32(select(global1.d, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-974f, global1.d.x, 539f))), vec3<bool>(false, false, true))), -9921i), countOneBits(~(-vec4<i32>(global1.b.d.x, global1.e, -44975i, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1225f, 2608f, 1611f, global0.x) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.c.x, -857f, 1144f, global0.x), vec4<f32>(718f, -806f, global0.x, -2070f), global1.b.b)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2051f, global0.x, 955f, -499f))), vec4<f32>(_wgslsmith_f_op_f32(global0.x - global1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-880f, global0.x), _wgslsmith_f_op_f32(f32(-1f) * -103f)), global1.b.b))) - vec4<f32>(155f, global0.x, global0.x, -1151f));
    let var_0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(~global1.b.a, 49560u), 24712u), !global1.a.b, false, global1.b.d, ((global1.e >> (136106u % 32u)) >> (~u_input.b % 32u)) | (func_1(~vec2<u32>(u_input.b, 4294967295u), _wgslsmith_sub_vec3_i32(global1.a.d, vec3<i32>(u_input.c, 2147483647i, 0i))) | global1.a.e));
    global1 = Struct_2(func_6(_wgslsmith_f_op_f32(-496f * 1313f), !vec2<bool>(global1.a.e < 48312i, true), global1.b), func_5(Struct_2(Struct_1(4294967295u, vec4<bool>(false, false, true, false), all(var_0.b), abs(global1.a.d), 1i), Struct_1(_wgslsmith_div_u32(var_0.a, 36543u), !vec4<bool>(false, var_0.c, true, true), true, reverseBits(var_0.d), ~(-48687i)), _wgslsmith_f_op_vec3_f32(global1.d * _wgslsmith_f_op_vec3_f32(global1.d * vec3<f32>(1895f, global0.x, global1.d.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1054f, 469f, 234f) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-173f, -1480f, -1204f)))), (14448i ^ u_input.c) << (11300u % 32u)), vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x * 310f) + global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) * _wgslsmith_f_op_f32(trunc(global1.c.x)))), global1.b.e), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-987f, global1.d.x, global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-833f, 1736f, global1.c.x)))))))), vec3<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-1f)), -1813f, _wgslsmith_f_op_vec3_f32(func_2(~select(vec3<u32>(16824u, u_input.b, u_input.b), vec3<u32>(80823u, var_0.a, var_0.a), var_0.b.x), _wgslsmith_div_vec3_i32(var_0.d, _wgslsmith_clamp_vec3_i32(vec3<i32>(-17178i, global1.e, 35901i), var_0.d, var_0.d)))).x), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.c >> (23290u % 32u), -var_0.d.x, u_input.a), ~min(vec4<i32>(u_input.c, var_0.d.x, global1.a.e, global1.a.d.x), vec4<i32>(47571i, -2147483647i, 15393i, -2147483647i))), -vec4<i32>(u_input.c, -u_input.c, u_input.a, firstLeadingBit(-2147483647i))));
    let var_1 = _wgslsmith_f_op_f32(-global1.d.x);
    global1 = Struct_2(var_0, global1.b, global0.zxw, global1.c, -2147483647i);
    let var_2 = global2[_wgslsmith_index_u32(~var_0.a, 4u)];
    var var_3 = !var_0.b.x;
    var var_4 = 52971u;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.d.x), -1493f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -958f), global0.x))), global1.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-455f)), _wgslsmith_f_op_f32(var_1 * 259f), _wgslsmith_div_f32(-895f, var_2.c.x), _wgslsmith_f_op_f32(round(var_1))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.c.x, var_2.c.x, 255f, -1000f), vec4<f32>(419f, 1149f, var_2.d.x, -134f)))) * vec4<f32>(964f, _wgslsmith_f_op_vec3_f32(func_2(vec3<u32>(u_input.b, 50697u, 64580u) ^ vec3<u32>(29647u, 4294967295u, 50654u), var_2.a.d)).x, var_2.c.x, var_1)));
}

