struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(816f, -197f, -586f), 4294967295u);

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<f32>(1000f, 1467f, -1681f), 43485u), Struct_1(vec3<f32>(-505f, -458f, 414f), 102601u), Struct_1(vec3<f32>(-147f, 617f, -184f), 1u), Struct_1(vec3<f32>(-1037f, -1245f, 406f), 4294967295u), Struct_1(vec3<f32>(426f, 387f, -1147f), 29898u));

var<private> global3: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec2<u32>) -> vec3<f32> {
    var var_0 = Struct_3(~abs(global0.b), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(global0.a.x - 324f), arg_0)), ~_wgslsmith_mod_u32(27225u, abs(global0.b))), select(arg_2 >> (vec2<u32>(_wgslsmith_div_u32(0u, 44809u), arg_2.x) % vec2<u32>(32u)), arg_2, select(true, u_input.c.x > _wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(u_input.c.x, -648i)), true)), 0u, true);
    var_0 = Struct_3(u_input.a.x, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(arg_0)), arg_0, arg_0), var_0.d), var_0.c, abs(max(global0.b, 9747u)), select(any(global3.zy), false | all(!vec4<bool>(var_0.e, true, arg_1, false)), arg_1));
    var var_1 = ~arg_2.x;
    var_1 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(abs(countOneBits(20232u)) << (arg_2.x % 32u), firstLeadingBit(19097u)), 0u);
    let var_2 = _wgslsmith_add_vec2_u32(~(~vec2<u32>(arg_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.a.xx))), ~(~reverseBits(vec2<u32>(4294967295u, u_input.a.x))) ^ vec2<u32>(firstTrailingBit(13965u), global0.b));
    return _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(-1640f + 568f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - arg_0)), 1596f)));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: u32) -> u32 {
    var var_0 = Struct_3(global0.b, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(0u & ~global0.b), u_input.a.x, global0.b), 5u)], min(min(vec2<u32>(abs(4294967295u), ~global0.b), u_input.a.zy), ~(vec2<u32>(arg_2, 1u) << (vec2<u32>(1u, global0.b) % vec2<u32>(32u)))), 1u, u_input.c.x <= _wgslsmith_div_i32(countOneBits(2147483647i), -2147483647i));
    var var_1 = select(global3.x, false || global3.x, var_0.e);
    let var_2 = vec2<bool>(arg_1.x <= -2650f, global1.x);
    var_0 = Struct_3(~var_0.c.x, global2[_wgslsmith_index_u32(~global0.b, 5u)], (~vec2<u32>(global0.b, 4294967295u) << (~u_input.a.xx % vec2<u32>(32u))) | ~var_0.c, global0.b, true);
    let var_3 = -_wgslsmith_dot_vec3_i32(u_input.c.zxw, _wgslsmith_clamp_vec3_i32(min(abs(u_input.c.yxx), _wgslsmith_add_vec3_i32(vec3<i32>(0i, -1i, u_input.c.x), vec3<i32>(2147483647i, 4396i, -1i))), ~_wgslsmith_div_vec3_i32(u_input.c.wwz, u_input.c.xyx), abs(u_input.c.wyy)));
    return _wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_2, 0u)), var_0.c);
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> vec3<i32> {
    global1 = arg_1.xyz;
    var var_0 = vec2<u32>(func_4(!(!arg_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) + _wgslsmith_f_op_vec3_f32(func_3(-859f, global3.x, u_input.a.yz)))), ~reverseBits(~global0.b)), firstTrailingBit(~34577u));
    return ~(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(-u_input.c.yww, _wgslsmith_mult_vec3_i32(u_input.c.wxy, u_input.c.zwx)), vec3<i32>(abs(u_input.c.x), ~u_input.c.x, _wgslsmith_sub_i32(arg_0, arg_0)), firstTrailingBit(reverseBits(vec3<i32>(arg_0, arg_0, 20253i)))) >> ((~(~u_input.a) & ~vec3<u32>(u_input.b, var_0.x, 4294967295u)) % vec3<u32>(32u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>) -> vec3<bool> {
    global2 = array<Struct_1, 5>();
    global2 = array<Struct_1, 5>();
    let var_0 = u_input.b;
    let var_1 = -func_2(-reverseBits(-52897i), !select(arg_0, vec4<bool>(arg_0.x, false, global1.x, arg_0.x), var_0 >= 1u));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, global0.b), _wgslsmith_dot_vec2_u32(vec2<u32>(1605u, 0u) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)), vec2<u32>(var_0, global0.b) | u_input.a.yy))), 4294967295u | firstTrailingBit(var_0));
    return vec3<bool>(true, select(~4294967295u > reverseBits(~global0.b), true, all(!vec2<bool>(global1.x, false))), global3.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = select(!select(!vec3<bool>(global1.x, false, true), vec3<bool>(true, true, global3.x), !func_1(vec4<bool>(global1.x, global1.x, global1.x, global3.x), u_input.c.wz)), vec3<bool>(true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-726f))) <= _wgslsmith_div_f32(_wgslsmith_div_f32(470f, global0.a.x), 487f)), true);
    var var_0 = _wgslsmith_mult_i32(28938i, _wgslsmith_add_i32(u_input.c.x << (u_input.b % 32u), 0i));
    let var_1 = 21026u;
    let var_2 = countOneBits(~_wgslsmith_mult_vec2_i32(u_input.c.wz | vec2<i32>(u_input.c.x, -9098i), vec2<i32>(u_input.c.x, -2147483647i) ^ u_input.c.xy) << ((vec2<u32>(0u, u_input.a.x) | _wgslsmith_mod_vec2_u32(vec2<u32>(var_1, u_input.b), u_input.a.zy)) % vec2<u32>(32u)));
    global1 = vec3<bool>(!(!(_wgslsmith_f_op_f32(step(global0.a.x, global0.a.x)) <= global0.a.x)), false, any(select(!func_1(vec4<bool>(false, false, true, global3.x), var_2).zz, vec2<bool>(true, true), false)));
    var var_3 = Struct_3(~u_input.b, global2[_wgslsmith_index_u32(0u, 5u)], abs(vec2<u32>(var_1, global0.b)), var_1, any(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~min(1u, ~max(global0.b, var_1)), u_input.a.zx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.a.x, global0.a.x, global0.a.x, var_3.b.a.x) - vec4<f32>(global0.a.x, global0.a.x, global0.a.x, 246f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.a.x, var_3.b.a.x, -1880f, global0.a.x), vec4<f32>(-1663f, 1348f, global0.a.x, 959f))))))), ~(~(~vec4<u32>(global0.b, u_input.a.x, var_3.d, global0.b) | min(vec4<u32>(61975u, var_3.d, 1u, 26143u), vec4<u32>(global0.b, 60019u, 0u, u_input.b)))));
}

