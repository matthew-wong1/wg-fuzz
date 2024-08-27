struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<bool>;

var<private> global2: Struct_1;

var<private> global3: array<vec3<i32>, 7>;

var<private> global4: array<vec4<u32>, 27>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(1u);
    var var_1 = select(!select(!select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(global1.x, true, global1.x, false)), vec4<bool>(true, true, true, true), vec4<bool>(global1.x, true, global1.x, true)), select(vec4<bool>(true && select(true, false, global1.x), true | global1.x, all(select(vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(global1.x, true, true, global1.x), true)), -38689i > ~u_input.b.x), select(select(!vec4<bool>(global1.x, global1.x, global1.x, global1.x), select(vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(true, true, global1.x, true)), vec4<bool>(global1.x, false, false, false)), vec4<bool>(false, global1.x, true, global1.x), all(select(vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, global1.x, true), global1.x))), select(vec4<bool>(true, true, true, var_0.a > global2.a), vec4<bool>(4294967295u < var_0.a, true, !global1.x, false), vec4<bool>(global1.x || global1.x, any(vec4<bool>(global1.x, true, global1.x, global1.x)), global1.x, false))), false);
    var var_2 = Struct_1(1u);
    let var_3 = ~vec4<u32>(var_0.a, ~4294967295u, var_0.a, var_0.a) << (countOneBits(global4[_wgslsmith_index_u32(1u, 27u)]) % vec4<u32>(32u));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1461f, 1369f) + vec2<f32>(-348f, 141f)))) + vec2<f32>(_wgslsmith_f_op_f32(min(-641f, -260f)), _wgslsmith_f_op_f32(1727f - -850f))))));
    return _wgslsmith_mod_u32(~global2.a, 1403u);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(func_3());
    global1 = !vec3<bool>(true, any(global1.xx), all(!(!global1.xy)));
    global0 = global1.x || true;
    var_0 = Struct_1(global2.a);
    var var_1 = vec4<bool>(any(select(select(!global1.xy, vec2<bool>(true, false), true), vec2<bool>(var_0.a < 62394u, global1.x), true)), global1.x, any(global1.xy), global1.x);
    return Struct_1(4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global3 = array<vec3<i32>, 7>();
    let var_0 = func_2(2147483647i);
    let var_1 = arg_0;
    let var_2 = select(vec4<bool>(true, true, true, true), vec4<bool>(global1.x, any(vec2<bool>(var_0.a > 1u, !global1.x)), false, ~reverseBits(3035u) != arg_0.a), !global1.x);
    var var_3 = var_0;
    return var_1;
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -885f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(750f)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -878f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-801f, 1318f)), -762f, false)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(615f))))));
    var var_2 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(12416u, 14181u), ~vec2<u32>(u_input.a.x << (4294967295u % 32u), ~arg_2.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(14665u, 32301u), min(arg_2.a, ~2906u)), u_input.a.zx));
    global4 = array<vec4<u32>, 27>();
    let var_3 = func_4(Struct_1(~(~17081u)), max(~u_input.c.x, 2147483647i));
    return arg_2;
}

fn func_6(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -630f), _wgslsmith_f_op_f32(floor(-2200f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2592f, -677f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1364f, -471f), vec2<f32>(2509f, 420f))), false))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-1180f + -142f), -872f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1380f, -632f) - vec2<f32>(2037f, -1023f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-230f, -1062f) * vec2<f32>(-1066f, 1000f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1616f, 1207f), vec2<f32>(754f, -295f), arg_0.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(251f, -450f), vec2<f32>(-1187f, 391f), arg_0.zz))))))));
    global2 = Struct_1(~countOneBits(0u));
    global3 = array<vec3<i32>, 7>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-243f - var_0.x), var_0.x, _wgslsmith_f_op_f32(var_0.x - 920f), var_0.x))));
    global4 = array<vec4<u32>, 27>();
    return Struct_1(35029u);
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-144f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)), arg_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1820f)))), 839f);
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-458f + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1147f, _wgslsmith_f_op_f32(-arg_0.x))), var_1.x)));
    let var_2 = Struct_1(u_input.a.x);
    let var_3 = !vec2<bool>(true, global1.x);
    return Struct_1(~(~(~(var_2.a & global2.a))));
}

fn func_1() -> Struct_1 {
    global3 = array<vec3<i32>, 7>();
    let var_0 = func_7(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-595f)) * _wgslsmith_f_op_f32(-1699f + 257f)))), func_6(vec3<bool>(global1.x, global1.x, any(vec2<bool>(global1.x, true))), _wgslsmith_add_vec2_i32(reverseBits(firstTrailingBit(u_input.b)), vec2<i32>(0i, -1i >> (0u % 32u))), func_5(u_input.a.x, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 1u), global4[_wgslsmith_index_u32(global2.a, 27u)]), func_4(func_2(u_input.b.x), u_input.c.x), Struct_1(global2.a))), vec3<i32>(max(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.c.x), u_input.c.zz)), u_input.b.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c.x, -2237i, 17016i, u_input.b.x), -vec4<i32>(-7869i, -2147483647i, -25044i, u_input.b.x)), min(1i, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x)) | u_input.c.x), vec3<bool>(any(!select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, true))), any(select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, false, global1.x), global1.x)) & global1.x, firstLeadingBit(~67169u) == global2.a));
    global4 = array<vec4<u32>, 27>();
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -593f)))), _wgslsmith_f_op_f32(select(533f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-922f)) - _wgslsmith_f_op_f32(f32(-1f) * -698f)), all(select(global1.yy, global1.xx, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -593f))), vec3<f32>(694f, _wgslsmith_f_op_f32(f32(-1f) * -214f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(881f))))))));
    global0 = !(_wgslsmith_f_op_f32(-var_1.x) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -450f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(-var_1.x))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    var var_0 = global2.a;
    var var_1 = u_input.b.x << ((global2.a | ~func_6(vec3<bool>(false, global1.x, global1.x), _wgslsmith_add_vec2_i32(u_input.c.zy, u_input.b), func_2(u_input.b.x)).a) % 32u);
    global1 = !vec3<bool>(true, !all(!vec4<bool>(true, true, global1.x, false)), global1.x);
    let var_2 = Struct_1(abs(abs(u_input.a.x >> (~29892u % 32u))));
    let var_3 = !select(!vec3<bool>(global1.x & global1.x, u_input.c.x != u_input.b.x, global1.x), vec3<bool>(max(u_input.b.x, 1i) >= 2147483647i, select(any(vec2<bool>(global1.x, global1.x)), global1.x, true), !global1.x), !global1.x && all(!vec4<bool>(global1.x, global1.x, true, true)));
    global3 = array<vec3<i32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(1461f - -2325f), _wgslsmith_f_op_f32(round(-620f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -190f), -2352f))))), 17530u, -1476f, _wgslsmith_div_u32(1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(func_4(var_2, 0i).a, 0u), var_2.a)), u_input.b.x);
}

