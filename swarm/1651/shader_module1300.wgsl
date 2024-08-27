struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: vec4<u32> = vec4<u32>(14898u, 1u, 75307u, 79633u);

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: bool;

var<private> global4: Struct_3 = Struct_3(vec4<f32>(211f, -662f, 839f, -2790f), vec2<f32>(1061f, -232f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_4, arg_3: Struct_1) -> i32 {
    let var_0 = !select(select(!select(arg_3.d.zw, arg_3.c, arg_3.d.x), arg_3.d.xx, true), vec2<bool>(any(!arg_3.c), global2.x), any(select(select(vec4<bool>(true, true, arg_1, true), vec4<bool>(false, true, false, arg_3.c.x), false), arg_3.d, vec4<bool>(true, false, false, true))));
    let var_1 = global4.a;
    var var_2 = firstTrailingBit(4294967295u);
    let var_3 = Struct_2(u_input.b, arg_3, arg_3);
    let var_4 = arg_2;
    return -2147483647i;
}

fn func_4(arg_0: vec2<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_mult_i32(arg_0.x, firstTrailingBit(u_input.c.x) >> (global1.x % 32u));
    var var_1 = vec4<bool>(true, global2.x, !all(vec3<bool>(true, !global2.x, false)), true);
    let var_2 = Struct_1(~(~u_input.b << (firstLeadingBit(_wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(global1.x, 4294967295u, u_input.d.x, u_input.d.x))) % vec4<u32>(32u))), _wgslsmith_div_f32(1421f, global4.a.x), select(var_1.xx, !var_1.yw, global2.x), vec4<bool>(false, select(false, true, true), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, global1.x), ~4294967295u, global1.x) != u_input.d.x, var_1.x));
    global0 = array<i32, 9>();
    global4 = Struct_3(vec4<f32>(global4.b.x, _wgslsmith_f_op_f32(var_2.b - -731f), -1000f, -527f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.a.xx) * _wgslsmith_f_op_vec2_f32(-global4.b)));
    return global4.a.wy;
}

fn func_2(arg_0: vec2<f32>) -> vec3<u32> {
    let var_0 = u_input.d.zy;
    var var_1 = Struct_5(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(global4.a))))), arg_0));
    var var_2 = global2.x;
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, arg_0.x, var_1.a.a.x, _wgslsmith_f_op_f32(-3174f + var_1.a.b.x)) + vec4<f32>(_wgslsmith_f_op_f32(2055f - global4.b.x), -757f, _wgslsmith_f_op_f32(var_1.a.a.x + 955f), _wgslsmith_f_op_f32(-var_1.a.a.x))))), _wgslsmith_f_op_vec2_f32(func_4(vec2<i32>(func_3(var_1.a.a.zzy, false & global2.x, Struct_4(-1709f), Struct_1(u_input.b, -869f, vec2<bool>(global2.x, false), vec4<bool>(true, global2.x, global2.x, global2.x))), ~2147483647i))));
    global3 = true;
    return global1.zxz;
}

fn func_1(arg_0: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_clamp_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(-u_input.b.wx, vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(0u, 9u)])) >> (vec2<u32>(max(86484u, global1.x), 6259u) % vec2<u32>(32u))), -(~vec2<i32>(u_input.c.x, u_input.b.x)), vec2<i32>(~(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x, 86773u), 9u)]), global0[_wgslsmith_index_u32(0u, 9u)] >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 1u, u_input.d.x), global1.xyx), func_2(vec2<f32>(488f, global4.b.x))) % 32u)));
    let var_1 = ~(-_wgslsmith_mult_i32(~global0[_wgslsmith_index_u32(18u, 9u)] << (global1.x % 32u), _wgslsmith_dot_vec3_i32(~u_input.c, u_input.c)));
    let var_2 = Struct_1(-(~select(u_input.b, u_input.b, vec4<bool>(global2.x, true, false, false))), _wgslsmith_f_op_f32(f32(-1f) * -1339f), select(vec2<bool>(arg_0, false), select(select(select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), vec2<bool>(false, false)), vec2<bool>(true, false), !vec2<bool>(false, arg_0)), select(!vec2<bool>(global2.x, false), select(vec2<bool>(global2.x, true), vec2<bool>(arg_0, global2.x), true), global2.x), true), !(!(!vec2<bool>(global2.x, global2.x)))), select(select(!select(vec4<bool>(true, global2.x, arg_0, global2.x), vec4<bool>(true, arg_0, arg_0, global2.x), false), !(!vec4<bool>(false, true, arg_0, false)), !arg_0), vec4<bool>(true, all(!vec3<bool>(true, global2.x, false)), true, arg_0), vec4<bool>(all(select(vec3<bool>(global2.x, true, arg_0), vec3<bool>(true, global2.x, arg_0), vec3<bool>(arg_0, false, arg_0))), true, global2.x, true)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-global4.a);
    var var_4 = _wgslsmith_f_op_f32(-global4.b.x);
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1544f * var_3.x) - var_2.b), 210f, _wgslsmith_f_op_f32(min(1224f, global4.b.x)), -290f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-922f, var_3.x, global4.a.x, var_2.b))))), vec4<f32>(1419f, -174f, var_2.b, _wgslsmith_f_op_f32(var_2.b + global4.b.x)), var_2.d))))));
}

fn func_5(arg_0: Struct_3) -> u32 {
    global3 = global2.x;
    var var_0 = Struct_1(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)), select(select(vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 9u)] == global0[_wgslsmith_index_u32(28495u, 9u)], all(vec4<bool>(global2.x, false, false, false))), select(select(vec2<bool>(false, true), vec2<bool>(global2.x, global2.x), true), vec2<bool>(global2.x, global2.x), vec2<bool>(true, true)), !global2.x), select(select(select(vec2<bool>(true, false), vec2<bool>(true, global2.x), vec2<bool>(global2.x, true)), !vec2<bool>(true, global2.x), !vec2<bool>(global2.x, true)), !select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(!global2.x, true)), select(vec2<bool>(false, arg_0.b.x <= global4.b.x), vec2<bool>(global2.x, true), vec2<bool>(true, global2.x))), !vec4<bool>(global2.x, select(any(vec3<bool>(false, true, false)), true, true), true, !(!global2.x)));
    global3 = any(!select(!var_0.d.zx, vec2<bool>(var_0.d.x, false), select(vec2<bool>(true, global2.x), vec2<bool>(true, false), var_0.d.wz))) && true;
    global0 = array<i32, 9>();
    var var_1 = u_input.d;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(abs(global4.a.x)));
    var var_1 = func_5(Struct_3(_wgslsmith_f_op_vec4_f32(func_1(global2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global4.a.x, global4.b.x), vec2<f32>(var_0.a, var_0.a)), _wgslsmith_div_vec2_f32(global4.a.yy, vec2<f32>(global4.a.x, global4.a.x))))));
    var_1 = min(~(~(global1.x & 108889u) >> (82457u % 32u)), ~_wgslsmith_div_u32(6536u, u_input.d.x));
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 1u, global1.x, 58766u), vec4<u32>(4294967295u, 0u, 0u, u_input.d.x)), ~func_2(global4.a.yz).x), ~abs(u_input.d.wx << (u_input.d.xz % vec2<u32>(32u)))) >> (~0u % 32u);
    global2 = !vec2<bool>(global2.x, true);
    let var_3 = vec2<f32>(2174f, global4.b.x);
    var var_4 = Struct_2(u_input.b, Struct_1(vec4<i32>(36624i, -1i, firstTrailingBit(global0[_wgslsmith_index_u32(global1.x, 9u)]) & u_input.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, u_input.b), _wgslsmith_sub_vec4_i32(u_input.b, u_input.b))), _wgslsmith_f_op_f32(-var_3.x), vec2<bool>(select(u_input.d.x == global1.x, global2.x, true), select(!global2.x, !global2.x, 1291f <= var_3.x)), !select(select(vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(global2.x, false, global2.x, global2.x), true), select(vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, global2.x)), vec4<bool>(global2.x, global2.x, global2.x, global2.x))), Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(1u, 9u)] ^ global0[_wgslsmith_index_u32(19933u, 9u)], ~(-19540i), _wgslsmith_dot_vec3_i32(u_input.b.zww, vec3<i32>(global0[_wgslsmith_index_u32(1u, 9u)], 35170i, 1i)), u_input.b.x) | (-u_input.b | ~vec4<i32>(u_input.c.x, 34022i, global0[_wgslsmith_index_u32(global1.x, 9u)], 13995i)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-354f, -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.x)) * _wgslsmith_f_op_vec2_f32(func_4(u_input.b.ww)).x))), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(global2.x, false)), vec2<bool>(true, true), global1.x > 65299u), vec4<bool>(!global2.x, global2.x, true, all(!vec4<bool>(true, true, global2.x, global2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.a.xxw + vec3<f32>(var_4.b.b, var_4.c.b, var_4.c.b)) - global4.a.yxz))), global4.a.yzw)), var_4.a.x, _wgslsmith_div_vec3_i32(select(vec3<i32>(~70943i, -7487i, var_4.a.x ^ global0[_wgslsmith_index_u32(66711u, 9u)]), reverseBits(u_input.c) ^ u_input.c, var_4.c.d.xxy), vec3<i32>(firstTrailingBit(-var_4.b.a.x), u_input.b.x, 1i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(279f + 1280f) - var_0.a), global4.a.x, _wgslsmith_f_op_f32(743f * 1051f), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1(global2.x)).x + _wgslsmith_f_op_f32(f32(-1f) * -373f))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(853f, _wgslsmith_f_op_f32(floor(var_0.a)), 1000f, -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global4.a, global4.a))))));
}

