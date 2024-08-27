struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<bool>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> bool {
    let var_0 = -(global0.b.yxw << (~vec3<u32>(~u_input.d, 0u, u_input.d) % vec3<u32>(32u)));
    let var_1 = global0.a;
    var var_2 = vec3<bool>(global0.c, true, true);
    var var_3 = global0.c;
    global0 = Struct_3(global0.a, _wgslsmith_sub_vec4_i32(~(select(u_input.a, u_input.a, var_2.x) | _wgslsmith_mult_vec4_i32(u_input.a, global0.b)), _wgslsmith_add_vec4_i32(global0.b, vec4<i32>(u_input.c << (u_input.d % 32u), ~u_input.c, -3016i >> (u_input.d % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c), u_input.a.yw)))), false);
    return var_2.x;
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(global0.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a * _wgslsmith_f_op_vec3_f32(vec3<f32>(334f, global0.a.x, global0.a.x) + global0.a)))), min(_wgslsmith_add_vec4_i32(-(global0.b | global0.b), _wgslsmith_mult_vec4_i32(global0.b << (vec4<u32>(u_input.d, 47116u, 1u, arg_0) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, 36876i, -17723i, global0.b.x))), global0.b << (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 4294967295u, arg_0, 1u), select(vec4<u32>(u_input.d, 65513u, 55786u, 34554u), vec4<u32>(1u, 20769u, 30960u, arg_0), vec4<bool>(true, true, true, global0.c)), ~vec4<u32>(0u, 0u, arg_0, arg_0)) % vec4<u32>(32u))), !global0.c);
    global1 = !select(select(vec2<bool>(true, true), select(vec2<bool>(true, global1.x), select(vec2<bool>(global1.x, global0.c), vec2<bool>(var_0.c, true), global0.c), select(vec2<bool>(true, true), vec2<bool>(var_0.c, global0.c), vec2<bool>(global0.c, true))), false), !select(vec2<bool>(var_0.c, var_0.c), !vec2<bool>(global0.c, global0.c), true), !(!(!vec2<bool>(var_0.c, var_0.c))));
    var var_1 = _wgslsmith_f_op_f32(1005f - _wgslsmith_f_op_f32(f32(-1f) * -632f));
    var var_2 = u_input.d;
    let var_3 = -vec4<i32>(abs(_wgslsmith_div_i32(global0.b.x << (u_input.d % 32u), abs(var_0.b.x))), 2147483647i, (_wgslsmith_mod_i32(1i, 2147483647i) ^ (var_0.b.x << (u_input.d % 32u))) << (~(~65582u) % 32u), global0.b.x);
    return var_0.b.x > ~firstLeadingBit(u_input.c);
}

fn func_2() -> Struct_3 {
    var var_0 = ~0u;
    let var_1 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i, u_input.a.x), ~u_input.c), u_input.a, all(vec4<bool>(func_1(), false, func_3(_wgslsmith_div_u32(0u, u_input.d)), true)), any(select(!select(vec3<bool>(false, false, global0.c), vec3<bool>(true, false, global0.c), vec3<bool>(true, global0.c, false)), !select(vec3<bool>(global0.c, global1.x, global0.c), vec3<bool>(false, global0.c, true), vec3<bool>(global1.x, global1.x, global1.x)), !global0.c || global0.c)));
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global0.a, global0.a)))), _wgslsmith_f_op_vec3_f32(global0.a - global0.a))), var_1.b, var_1.d);
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-1942f)), _wgslsmith_f_op_f32(-355f + 1000f), -833f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1299f, _wgslsmith_f_op_f32(trunc(-718f)), 1f))), countOneBits(reverseBits(u_input.a)), false);
    return Struct_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1287f)), _wgslsmith_f_op_f32(-1000f + global0.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-807f, -1015f)), _wgslsmith_f_op_f32(f32(-1f) * -1289f)))))), firstLeadingBit(~global0.b) | vec4<i32>(i32(-1i) * -2147483647i, firstTrailingBit(0i), _wgslsmith_mod_i32(~global0.b.x, var_1.b.x & 21150i), 3063i), !global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global1 = !vec2<bool>(!select(all(vec4<bool>(false, global0.c, global0.c, global0.c)), false, global1.x), true);
    var var_1 = vec2<bool>(func_1(), false);
    global1 = vec2<bool>(true, global0.b.x < 1i);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -566f));
    let var_3 = func_2();
    var var_4 = ~1u;
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.yy)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(var_2.x + var_2.x), 647f, 1433f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f) - -1312f))), global0.b.x, global0.a, ~33657u);
}

