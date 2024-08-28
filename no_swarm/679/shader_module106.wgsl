struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec3<bool>, 6>;

var<private> global2: i32 = 49175i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2485f))) + 457f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -336f) * -369f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> bool {
    var var_0 = Struct_1(global0.x, (_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-30702i, -2147483647i, -1i)), select(u_input.a.zxw, u_input.a.xww, global0.x)) ^ vec3<i32>(51825i, firstTrailingBit(u_input.b), u_input.b ^ 13144i)) << (countOneBits(~(~vec3<u32>(arg_1, 1u, arg_1))) % vec3<u32>(32u)), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(select(arg_0.x, 2109f, false)), _wgslsmith_f_op_f32(arg_0.x * -691f))))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-280f * _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_i32(3405i, var_0.b.x)))), 263f))));
    global1 = array<vec3<bool>, 6>();
    let var_2 = -2147483647i;
    let var_3 = Struct_1(global0.x, var_0.b, -21814i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.d, _wgslsmith_div_vec3_f32(vec3<f32>(153f, -1155f, 1000f), vec3<f32>(var_0.d.x, -129f, 1000f)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(round(-858f)), var_0.a)), var_0.d.x, var_0.d.x)));
    return false && (global0.x || var_0.a);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(select(vec2<bool>(global0.x, !func_2(vec2<f32>(-283f, -785f), 39167u)), !global0.zw, global0.wy), _wgslsmith_f_op_f32(round(-375f)), all(!vec2<bool>(!global0.x, !global0.x)), global0.zxz);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(func_3(u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1114f + var_0.b) * _wgslsmith_f_op_f32(var_0.b * -158f)), 1000f, _wgslsmith_f_op_f32(floor(-1329f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(1144f + -2069f), var_0.b, _wgslsmith_div_f32(-1059f, var_0.b), 1804f))))));
    let var_2 = _wgslsmith_dot_vec2_i32(u_input.a.xw, -u_input.a.yz);
    let var_3 = false;
    let var_4 = Struct_1(var_2 < max(reverseBits(reverseBits(1i)), max(var_2, 1i)), u_input.a.yyw, ~0i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b, _wgslsmith_div_f32(var_0.b, -392f), var_1.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_1.x, var_1.x) * var_1.wyx))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1065f, -2053f, var_0.b))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 111f, -596f)))))));
    return Struct_1(false, _wgslsmith_clamp_vec3_i32(max(-min(u_input.a.xzz, u_input.a.zyx), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a.yxw, var_4.b), ~(-1i), ~1i)), -vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, var_2), ~(-2147483647i), reverseBits(12957i)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 8298i, var_4.b.x), _wgslsmith_sub_vec3_i32(var_4.b, var_4.b), var_4.b)), firstTrailingBit(var_4.c), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b, 542f, -264f))) - _wgslsmith_f_op_vec3_f32(-var_4.d)), _wgslsmith_f_op_vec3_f32(-var_1.zyz), 1i > _wgslsmith_add_i32(var_2, var_2))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_1.x)))), _wgslsmith_f_op_f32(func_3(~(-2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-422f)) * var_1.x)))));
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = arg_0;
    return !(!select(!(!vec4<bool>(true, arg_0.a, var_0.a, true)), vec4<bool>(true, any(vec2<bool>(global0.x, arg_0.a)), any(global0.xyw), false), select(!vec4<bool>(var_0.a, global0.x, true, global0.x), vec4<bool>(true, global0.x, true, global0.x), !vec4<bool>(arg_0.a, global0.x, global0.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global0 = select(func_4(func_1()), !func_4(func_1()), vec4<bool>(true != any(!global0.xy), global0.x, global0.x | true, false));
    let var_1 = func_1();
    let var_2 = Struct_2(select(vec2<bool>(any(func_4(var_1)), var_1.a), !select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(global0.x, var_1.a), true), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1164f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-166f, _wgslsmith_f_op_f32(-641f - var_1.d.x)))), var_1.a, func_4(var_1).xyx);
    var var_3 = vec2<u32>(1u, 1u);
    global2 = ~firstTrailingBit(~(~u_input.a.x));
    global0 = vec4<bool>(true, all(!(!(!var_2.d))), any(vec2<bool>(true, true)), all(!global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(var_3.x, var_3.x)), 6u)]));
    var_3 = ~vec2<u32>(var_3.x, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, ~(~countOneBits(2147483647i)), var_1.d.x);
}

