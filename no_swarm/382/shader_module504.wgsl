struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<u32>(52883u, 1u), vec3<bool>(true, true, false)), Struct_1(vec2<u32>(4294967295u, 0u), vec3<bool>(false, true, false)), Struct_1(vec2<u32>(1u, 4294967295u), vec3<bool>(true, true, false)), Struct_1(vec2<u32>(0u, 1u), vec3<bool>(true, false, false)), Struct_1(vec2<u32>(1u, 4294967295u), vec3<bool>(false, false, true)));

var<private> global2: Struct_1 = Struct_1(vec2<u32>(44757u, 0u), vec3<bool>(true, true, true));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec2<u32> {
    global1 = array<Struct_1, 5>();
    global2 = Struct_1(vec2<u32>(global2.a.x & reverseBits(~26379u), 330u), !vec3<bool>(!(true && arg_3.b.x), global2.b.x, arg_0 != _wgslsmith_add_i32(arg_1.x, -10586i)));
    let var_0 = Struct_1(vec2<u32>(4294967295u >> (~countOneBits(arg_3.a.x) % 32u), u_input.a.x), global2.b);
    global2 = var_0;
    global2 = arg_3;
    return vec2<u32>(1u, arg_3.a.x);
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(12981u, global2.a.x), vec2<u32>(4294967295u, u_input.a.x), ~vec2<u32>(3937u, 0u)), vec2<u32>(u_input.a.x, 31206u) | ~vec2<u32>(25048u, 0u)) | _wgslsmith_mod_vec2_u32(vec2<u32>(global2.a.x, 4294967295u) >> (global2.a % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(func_3(u_input.b, vec4<i32>(-2147483647i, u_input.b, 15694i, u_input.b), vec2<i32>(-56520i, u_input.b), global1[_wgslsmith_index_u32(1u, 5u)]), global2.a >> (vec2<u32>(global2.a.x, u_input.a.x) % vec2<u32>(32u)), abs(global2.a))), select(global2.b, !select(select(vec3<bool>(global2.b.x, arg_0.x, global2.b.x), global2.b, vec3<bool>(false, arg_0.x, global2.b.x)), arg_0.ywz, !arg_0.x), !global2.b.x));
    var var_1 = firstLeadingBit(vec4<i32>(-(~u_input.b), u_input.b, _wgslsmith_add_i32(u_input.b & _wgslsmith_dot_vec4_i32(vec4<i32>(-5297i, u_input.b, u_input.b, -1772i), vec4<i32>(27700i, u_input.b, u_input.b, u_input.b)), -_wgslsmith_add_i32(27411i, 7464i)), u_input.b));
    var var_2 = global1[_wgslsmith_index_u32(global2.a.x & 0u, 5u)];
    var var_3 = Struct_2(-558f, global1[_wgslsmith_index_u32(global2.a.x, 5u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, -242f), global0.yx, arg_0.wy))))));
    var var_4 = Struct_1(vec2<u32>(4294967295u, var_3.b.a.x), select(select(vec3<bool>(u_input.b == u_input.b, true, all(var_3.b.b.yy)), select(select(vec3<bool>(global2.b.x, false, false), global2.b, vec3<bool>(true, false, false)), select(vec3<bool>(var_0.b.x, var_3.b.b.x, arg_0.x), var_3.b.b, false), all(arg_0)), !(false && global2.b.x)), !(!(!arg_0.xwx)), vec3<bool>(true, true, any(arg_0.wxy))));
    return Struct_2(_wgslsmith_f_op_f32(-var_3.a), Struct_1(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.x, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(var_4.a.x, 3411u), vec2<u32>(var_2.a.x, 4294967295u))), vec3<bool>(var_2.b.x != !global2.b.x, any(vec3<bool>(arg_0.x, arg_0.x, var_3.b.b.x)), all(!var_2.b))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1707f, var_3.a) - global0.yx) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.c.x, 132f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) + global0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1000f, -1648f))))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: i32) -> u32 {
    var var_0 = select(select(vec4<bool>(any(arg_0.b.b), arg_1.b.b.x, all(select(arg_1.b.b, arg_1.b.b, arg_1.b.b.x)), global2.b.x), select(vec4<bool>(!arg_0.b.b.x, any(vec4<bool>(arg_1.b.b.x, global2.b.x, false, arg_1.b.b.x)), arg_1.b.b.x, arg_0.b.b.x == global2.b.x), select(vec4<bool>(false, global2.b.x, arg_1.b.b.x, true), select(vec4<bool>(true, false, true, true), vec4<bool>(global2.b.x, false, global2.b.x, false), vec4<bool>(false, arg_0.b.b.x, false, arg_0.b.b.x)), any(vec2<bool>(true, global2.b.x))), !(!vec4<bool>(global2.b.x, true, true, arg_0.b.b.x))), vec4<bool>(global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f) == _wgslsmith_f_op_f32(step(-110f, arg_1.c.x)), any(!vec4<bool>(arg_0.b.b.x, false, true, arg_1.b.b.x)), (arg_1.b.b.x && arg_0.b.b.x) | false)), vec4<bool>(true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, global2.b.x, arg_0.b.b.x), true)) | true, (_wgslsmith_sub_i32(-11798i, -58644i) << (_wgslsmith_sub_u32(9214u, global2.a.x) % 32u)) <= _wgslsmith_mult_i32(u_input.b, -arg_3), all(vec4<bool>(!global2.b.x, true, any(vec4<bool>(arg_1.b.b.x, false, arg_0.b.b.x, true)), true))), !all(!(!vec4<bool>(true, arg_1.b.b.x, arg_1.b.b.x, arg_1.b.b.x))));
    let var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_3, -1i), vec2<i32>(0i, 2147483647i)) & _wgslsmith_mod_vec2_i32(vec2<i32>(4524i, arg_3), max(vec2<i32>(-1170i, 3902i), vec2<i32>(arg_3, 0i))), vec2<i32>(_wgslsmith_mult_i32(-36836i, u_input.b), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -3238i, u_input.b), vec3<i32>(u_input.b, 1i, arg_3)), countOneBits(vec3<i32>(arg_3, 31429i, 2147483647i))))) < -23364i;
    let var_2 = Struct_2(1000f, func_2(!select(!vec4<bool>(var_0.x, false, global2.b.x, true), vec4<bool>(global2.b.x, var_1, false, arg_1.b.b.x), true)).b, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2.x, -361f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.zz * vec2<f32>(-246f, global0.x))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(419f, arg_0.c.x))))));
    global2 = Struct_1(select(~(~(~vec2<u32>(9496u, 0u))), arg_0.b.a, all(vec2<bool>(true, true))), !func_2(!vec4<bool>(false, global2.b.x, true, global2.b.x)).b.b);
    var var_3 = var_2;
    return _wgslsmith_div_u32(min(abs(firstLeadingBit(223u | var_2.b.a.x)), 0u), u_input.a.x);
}

fn func_1() -> vec2<f32> {
    let var_0 = func_4(Struct_2(1020f, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(29563u, _wgslsmith_add_u32(global2.a.x, 4294967295u)), 42728u), 5u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -355f)))), func_2(!(!vec4<bool>(global2.b.x, global2.b.x, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-397f - global0.x), -1494f, _wgslsmith_f_op_f32(max(586f, global0.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -2451f, 777f) * vec3<f32>(1207f, 140f, global0.x))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-765f, global0.x, global0.x), vec3<f32>(508f, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(365f, -598f, -1000f), vec3<f32>(global0.x, global0.x, -1803f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, 622f, 218f)))))), ~(-u_input.b));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global0.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(global0.x + 712f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-446f, Struct_1(~_wgslsmith_mod_vec2_u32(vec2<u32>(global2.a.x, u_input.a.x), ~vec2<u32>(global2.a.x, u_input.a.x)), !vec3<bool>(global2.b.x, true, !global2.b.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_1()))));
    let var_1 = func_2(vec4<bool>(!(!var_0.b.b.x), !(!global2.b.x), !(!(!var_0.b.b.x)), global2.b.x || var_0.b.b.x)).b;
    var var_2 = countOneBits(reverseBits(_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(var_1.a.x, var_1.a.x, u_input.a.x)), ~vec3<u32>(46005u, 0u, 52036u)) | firstLeadingBit(vec3<u32>(4294967295u, 48910u, var_1.a.x))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global0.x, global0.x)), 475f)) + _wgslsmith_f_op_f32(step(883f, _wgslsmith_f_op_f32(round(var_0.c.x))))) - _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_vec2_f32(func_1()).x)), -1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, var_0.a) * -1894f)))));
    var var_3 = all(!var_1.b.xz);
    let var_4 = Struct_1(vec2<u32>(~(~abs(var_0.b.a.x)), ~(~(~global2.a.x))), global2.b);
    var var_5 = !vec3<bool>(true, false, all(vec4<bool>(var_4.b.x, false, true, var_1.b.x)) || var_0.b.b.x);
    var var_6 = Struct_2(_wgslsmith_f_op_f32(-296f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-328f, _wgslsmith_f_op_f32(global0.x + -1000f), var_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))))), func_2(vec4<bool>(all(vec2<bool>(false, false)), var_1.b.x, var_1.b.x, (i32(-1i) * -1i) > -u_input.b)).b, global0.zz);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_u32(abs(~vec3<u32>(global2.a.x, u_input.a.x, 0u)), ~vec3<u32>(var_4.a.x, var_2.x, 43341u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-451f * var_6.a)), min(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(0u, global2.a.x, 4294967295u)), vec3<u32>(~global2.a.x, 55808u, ~0u), vec3<u32>(_wgslsmith_sub_u32(var_2.x, var_6.b.a.x), countOneBits(u_input.a.x), var_2.x)), firstLeadingBit(~vec3<u32>(var_0.b.a.x, var_2.x, var_6.b.a.x))), var_6.c.x, u_input.b);
}

