struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    global0 = array<vec2<u32>, 19>();
    global0 = array<vec2<u32>, 19>();
    var var_0 = !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, true, true, false)), true)), false);
    var var_1 = -(vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_div_i32(u_input.a.x, 8645i), u_input.c));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1000f) * _wgslsmith_f_op_f32(step(-860f, -1346f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(507f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2045f + 889f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-934f * -1197f), _wgslsmith_f_op_f32(min(912f, -1394f)))) * -163f)) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1361f - -755f), _wgslsmith_f_op_f32(select(-1248f, _wgslsmith_f_op_f32(f32(-1f) * -537f), false)), 473f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 2461f, 1447f), vec3<f32>(-166f, -714f, 239f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(746f, 558f, 391f)))))));
    return var_0.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~u_input.b;
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(~global0[_wgslsmith_index_u32(u_input.d.x, 19u)]), firstLeadingBit(vec2<u32>(4294967295u, u_input.b) & (vec2<u32>(u_input.d.x, 1u) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))))), vec2<u32>(25702u, min(1u, ~9796u)));
    global0 = array<vec2<u32>, 19>();
    let var_2 = _wgslsmith_sub_u32(~max((u_input.b << (0u % 32u)) & ~u_input.b, _wgslsmith_clamp_u32(var_0 << (4294967295u % 32u), _wgslsmith_div_u32(4294967295u, 78206u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0, 8351u, 49371u), u_input.d))), var_0);
    var_1 = var_0;
    return Struct_1(select(arg_1.a, vec3<bool>(true, all(!vec3<bool>(false, true, arg_1.a.x)), true), !(true != all(vec2<bool>(arg_1.a.x, false)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_1.b - arg_1.b)))), vec4<f32>(_wgslsmith_div_f32(arg_1.b.x, arg_1.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -389f), arg_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(arg_1.b.x, -1374f), func_3())), arg_0.x))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_2(u_input.d.zxy, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-145f + 1000f), _wgslsmith_f_op_f32(1596f + -308f))), Struct_1(vec3<bool>(true, true, false), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1412f, -987f, 1521f, -925f) - vec4<f32>(1325f, -240f, -468f, 180f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-718f, 1000f, -1946f, -596f))))))), func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(355f, 397f), vec2<f32>(-1347f, -1960f), vec2<bool>(true, true))))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-489f, 767f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1382f, 539f), vec2<f32>(-1000f, -269f), false))), Struct_1(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec4<f32>(-858f, -852f, 1790f, -241f)))));
    global0 = array<vec2<u32>, 19>();
    global0 = array<vec2<u32>, 19>();
    global0 = array<vec2<u32>, 19>();
    let var_1 = 2147483647i;
    return Struct_1(func_2(_wgslsmith_div_vec2_f32(var_0.c.b.wx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.b.xy - vec2<f32>(var_0.b.b.x, var_0.c.b.x)))), Struct_1(var_0.b.a, vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.b.x), _wgslsmith_f_op_f32(-894f - -1701f), _wgslsmith_f_op_f32(round(var_0.c.b.x)), 1544f))).a, var_0.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 19>();
    var var_0 = !(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true))));
    var var_1 = func_1(firstTrailingBit(u_input.a));
    var var_2 = Struct_2(_wgslsmith_sub_vec3_u32(select(vec3<u32>(~4294967295u, ~u_input.b, ~1u), _wgslsmith_mult_vec3_u32(vec3<u32>(19748u, u_input.b, 1u), select(vec3<u32>(30716u, 4294967295u, 100003u), vec3<u32>(u_input.b, u_input.b, 39456u), true)), select(var_1.a.x, var_0.x, select(var_1.a.x, true, var_1.a.x))), vec3<u32>(0u, ~u_input.d.x, u_input.b)), Struct_1(select(vec3<bool>(!var_1.a.x, true, any(vec4<bool>(true, var_0.x, true, false))), vec3<bool>(false | var_0.x, var_0.x, var_1.a.x), false), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_1.b + _wgslsmith_f_op_vec4_f32(vec4<f32>(-238f, var_1.b.x, var_1.b.x, 1651f) - var_1.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_1.b, vec4<f32>(var_1.b.x, -491f, 981f, var_1.b.x))) + _wgslsmith_f_op_vec4_f32(var_1.b + vec4<f32>(111f, -1649f, 1000f, 1000f)))))), Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, -407f, var_1.b.x, var_1.b.x) + _wgslsmith_f_op_vec4_f32(var_1.b + var_1.b)))));
    let var_3 = select(vec4<bool>(-countOneBits(-26423i) < u_input.c, 17705i > u_input.c, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b.x))) < _wgslsmith_f_op_f32(-var_2.b.b.x)), !select(vec4<bool>(false, true, var_2.c.a.x, all(vec4<bool>(var_2.c.a.x, true, var_1.a.x, var_1.a.x))), !(!vec4<bool>(var_2.c.a.x, true, var_2.c.a.x, true)), select(!vec4<bool>(var_0.x, var_1.a.x, var_1.a.x, false), vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(false, var_1.a.x, false, var_2.c.a.x), var_0.x))), !all(vec3<bool>(true, true, true)));
    let var_4 = ((_wgslsmith_clamp_i32(1i, u_input.c ^ 29983i, _wgslsmith_add_i32(u_input.c, 0i)) > abs(u_input.a.x)) && any(select(var_3, var_3, var_3))) && (var_1.a.x & (all(func_2(vec2<f32>(var_2.b.b.x, -1159f), Struct_1(var_3.wxy, vec4<f32>(-1682f, -270f, var_1.b.x, -550f))).a.zz) || any(var_2.b.a.zx)));
    var var_5 = var_2.b;
    var var_6 = Struct_2(~(~(u_input.d.yzw | vec3<u32>(9372u, 88501u, var_2.a.x)) & ~select(vec3<u32>(var_2.a.x, u_input.b, var_2.a.x), var_2.a, vec3<bool>(true, var_1.a.x, true))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.b.b.xy - var_1.b.zw) - var_5.b.xx), var_2.b), Struct_1(var_2.c.a, vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.b.x), var_2.c.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-220f)), var_1.b.x)), _wgslsmith_f_op_f32(var_5.b.x + var_1.b.x))));
    let var_7 = vec4<bool>(var_6.b.a.x, var_0.x, all(select(!var_1.a.zz, vec2<bool>(false, true), func_3())), func_1(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, firstTrailingBit(2147483647i)), u_input.a)).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + 458f), _wgslsmith_f_op_f32(max(var_2.c.b.x, var_1.b.x)), func_1(-vec2<i32>(0i, min(u_input.a.x, 2162i))).b.x);
}

