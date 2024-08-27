struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: u32 = 0u;

var<private> global2: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec2<f32>(1031f, 1000f), Struct_1(vec2<bool>(false, true), vec3<bool>(false, false, true), vec2<i32>(31828i, -18817i), 6253u), 19344i, vec3<i32>(i32(-2147483648), -50286i, -20i)), Struct_2(vec2<f32>(174f, 395f), Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, true), vec2<i32>(1i, -54865i), 0u), -18514i, vec3<i32>(24315i, 1i, 2147483647i)), Struct_2(vec2<f32>(564f, -137f), Struct_1(vec2<bool>(false, true), vec3<bool>(false, false, true), vec2<i32>(2147483647i, -29010i), 1u), 3994i, vec3<i32>(0i, 53777i, 0i)), Struct_2(vec2<f32>(-1260f, -2174f), Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, true), vec2<i32>(0i, -1i), 1u), 15645i, vec3<i32>(1i, i32(-2147483648), 16578i)), Struct_2(vec2<f32>(811f, 566f), Struct_1(vec2<bool>(false, true), vec3<bool>(false, true, false), vec2<i32>(-36350i, -8685i), 4294967295u), 0i, vec3<i32>(-28610i, 0i, -1i)), Struct_2(vec2<f32>(-294f, 580f), Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, true), vec2<i32>(-59912i, 40563i), 33503u), 2803i, vec3<i32>(33264i, 14922i, 2147483647i)), Struct_2(vec2<f32>(-772f, -1000f), Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, true), vec2<i32>(46435i, i32(-2147483648)), 4294967295u), 0i, vec3<i32>(-1i, -7860i, 1i)), Struct_2(vec2<f32>(910f, -398f), Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, true), vec2<i32>(33040i, -1i), 0u), 24825i, vec3<i32>(2147483647i, -7019i, 35449i)), Struct_2(vec2<f32>(646f, 446f), Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, true), vec2<i32>(1i, i32(-2147483648)), 87633u), 11366i, vec3<i32>(0i, -29389i, 2147483647i)));

var<private> global3: i32 = 1i;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    global3 = u_input.a;
    return arg_0.x;
}

fn func_3() -> f32 {
    var var_0 = ~u_input.a & 84338i;
    let var_1 = !(!any(global0.zyw));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1096f, 841f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(868f, 1000f)))))), Struct_1(!global0.xx, vec3<bool>(u_input.b > -1i, var_1, all(select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(var_1, false, true, true), var_1))), vec2<i32>(firstTrailingBit(-2147483647i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 67007u, 24890u), vec3<u32>(0u, 0u, 4294967295u)) % 32u), _wgslsmith_add_i32(-1i, func_2(vec2<i32>(20440i, u_input.b)))), _wgslsmith_mult_u32(~25558u ^ select(4294967295u, 0u, global0.x), ~firstTrailingBit(37868u))), u_input.a & u_input.a, vec3<i32>(select(abs(u_input.a) ^ u_input.b, _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, u_input.b), reverseBits(vec2<i32>(u_input.a, u_input.b))), true), _wgslsmith_dot_vec2_i32(select(~vec2<i32>(u_input.a, -2147483647i), ~vec2<i32>(u_input.b, -1419i), global0.zw), vec2<i32>(max(974i, 29049i), u_input.a)), select(63172i, reverseBits(_wgslsmith_sub_i32(0i, u_input.b)), false)));
    let var_3 = (var_2.a.x <= var_2.a.x) && !var_2.b.b.x;
    var var_4 = Struct_3(_wgslsmith_mod_i32(abs(u_input.b), var_2.d.x << (_wgslsmith_mod_u32(~var_2.b.d, var_2.b.d) % 32u)), Struct_1(select(!vec2<bool>(false, var_1), global0.zz, !vec2<bool>(true, var_1)), !select(global0.zzz, select(vec3<bool>(var_2.b.a.x, true, global0.x), var_2.b.b, vec3<bool>(var_1, global0.x, true)), false), (vec2<i32>(-1i, -17032i) << ((vec2<u32>(var_2.b.d, var_2.b.d) ^ vec2<u32>(var_2.b.d, var_2.b.d)) % vec2<u32>(32u))) >> (reverseBits(firstLeadingBit(vec2<u32>(1u, var_2.b.d))) % vec2<u32>(32u)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.b.d, 50258u, var_2.b.d, 4294967295u), vec4<u32>(1u, 49425u, var_2.b.d, 0u) ^ vec4<u32>(var_2.b.d, 18936u, 24426u, 4294967295u))), firstLeadingBit(var_2.b.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(483f, var_2.a.x)), var_2.a, var_2.b.a.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a * vec2<f32>(var_2.a.x, var_2.a.x))))), Struct_2(var_2.a, Struct_1(select(select(var_2.b.b.xz, var_2.b.b.yz, false), !global0.yx, true), select(global0.zxy, vec3<bool>(true, var_1, true), true), -_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(-2147483647i, var_2.d.x)), 1u), i32(-1i) * -15151i, reverseBits(vec3<i32>(-u_input.b, abs(1i), abs(-30020i)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_4.e.a.x, -1167f)) * _wgslsmith_f_op_f32(-var_4.e.a.x))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: i32, arg_3: u32) -> f32 {
    global3 = -2147483647i;
    global1 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(~(~arg_3), arg_3)), arg_3);
    let var_0 = vec4<i32>(arg_2, arg_0.x, ~arg_2, reverseBits(_wgslsmith_add_i32(arg_0.x, -2147483647i)));
    let var_1 = ~_wgslsmith_mult_u32(35594u, arg_3);
    global2 = array<Struct_2, 9>();
    return 536f;
}

fn func_1(arg_0: Struct_2) -> StorageBuffer {
    global1 = 4294967295u;
    let var_0 = max(-24363i, _wgslsmith_sub_i32(func_2(_wgslsmith_mult_vec2_i32(arg_0.d.zx, vec2<i32>(arg_0.d.x, arg_0.d.x))), select(firstTrailingBit(arg_0.c), ~u_input.b, true)) >> (arg_0.b.d % 32u));
    let var_1 = _wgslsmith_f_op_f32(func_4(abs(select(select(vec2<i32>(22823i, arg_0.d.x), vec2<i32>(arg_0.b.c.x, -19690i), global0.x), vec2<i32>(-2147483647i, arg_0.c), vec2<bool>(true, false)) ^ ~(~arg_0.d.yz)), vec4<bool>(_wgslsmith_f_op_f32(select(-744f, _wgslsmith_f_op_f32(func_3()), true)) >= arg_0.a.x, all(!vec3<bool>(arg_0.b.a.x, arg_0.b.b.x, arg_0.b.a.x)), any(vec4<bool>(true, true, true, any(vec2<bool>(false, arg_0.b.a.x)))), !global0.x), _wgslsmith_sub_i32(u_input.a, _wgslsmith_mod_i32(arg_0.c, 1i)), ~0u));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(857f, _wgslsmith_f_op_f32(select(951f, 637f, var_2.b.a.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2938f, var_2.a.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-379f, 570f) + arg_0.a)))), vec2<f32>(arg_0.a.x, -821f)));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(arg_0.a.x, 130f), 1209f, 232f))), _wgslsmith_div_i32(41904i, reverseBits(var_0 ^ _wgslsmith_mult_i32(-27026i, 14168i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(46125u, 9u)];
    var var_1 = 59012u;
    global3 = -10616i;
    var var_2 = _wgslsmith_f_op_vec2_f32(step(var_0.a, var_0.a));
    global0 = !vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - 558f) * _wgslsmith_f_op_f32(-227f + var_2.x)) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), 184f, false)), global0.x, false, !all(select(global0.zyw, global0.wxx, global0.x)));
    global3 = -18788i;
    var_1 = var_0.b.d;
    let x = u_input.a;
    s_output = func_1(Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.a)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a.x, var_2.x)))))), Struct_1(vec2<bool>(true, !var_0.b.b.x), var_0.b.b, -(~var_0.b.c), firstTrailingBit(var_0.b.d) & ~0u), -var_0.d.x, abs(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-1i, u_input.a, var_0.d.x)), vec3<i32>(u_input.a, -3493i, 26478i) << (vec3<u32>(0u, var_0.b.d, var_0.b.d) % vec3<u32>(32u))))));
}

