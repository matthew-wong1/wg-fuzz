struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: vec4<u32> = vec4<u32>(102427u, 0u, 15713u, 4294967295u);

var<private> global2: array<f32, 10> = array<f32, 10>(-763f, -583f, 2064f, -549f, -232f, -827f, -758f, -2297f, -1000f, 1010f);

var<private> global3: array<u32, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = -212f;
    let var_1 = Struct_5(Struct_4(global0.b.b, global0.a.a, Struct_2(global0.a.c.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(global0.a.c.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-210f - 1259f)), Struct_1(!global0.b.c.e.a), Struct_1(true)), 4294967295u), global0.a, global0.b.b.a);
    global0 = Struct_5(Struct_4(global0.a.a, Struct_3(~vec3<u32>(0u, 4294967295u, 1u)), Struct_2(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b) >> (49962u % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(24986u, 10u)], -218f, -952f, -1002f) * _wgslsmith_f_op_vec4_f32(step(var_1.a.c.b, global0.b.c.b))), -1000f, global0.a.c.d, Struct_1(false & var_1.b.c.e.a)), _wgslsmith_mod_u32(0u, global1.x)), global0.a, max(_wgslsmith_add_vec3_u32(global0.a.b.a, ~vec3<u32>(var_1.a.b.a.x, 17334u, 1u)), ~vec3<u32>(arg_0.x, firstLeadingBit(var_1.b.d), 1u)));
    let var_2 = reverseBits(_wgslsmith_clamp_u32(var_1.b.d, 1100u, _wgslsmith_dot_vec2_u32(u_input.a.zw, ~vec2<u32>(var_1.b.a.a.x, global1.x))) ^ ~_wgslsmith_mod_u32(min(4294967295u, arg_0.x), global0.c.x));
    global0 = var_1;
    return global1.x;
}

fn func_2(arg_0: vec3<i32>) -> Struct_5 {
    var var_0 = global0.b;
    var_0 = Struct_4(Struct_3(~(abs(u_input.e) << ((global1.ywx | vec3<u32>(global1.x, 1u, global1.x)) % vec3<u32>(32u)))), global0.b.a, Struct_2(_wgslsmith_mult_i32(global0.a.c.a << ((var_0.b.a.x ^ 0u) % 32u), 5089i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a.c.b + global0.a.c.b)), 336f, Struct_1((70205u ^ global3[_wgslsmith_index_u32(var_0.a.a.x, 4u)]) > firstTrailingBit(var_0.b.a.x)), Struct_1(false)), _wgslsmith_div_u32(func_3(u_input.e) ^ ~var_0.d, ~1u));
    let var_1 = Struct_5(Struct_4(var_0.b, Struct_3(reverseBits(~global0.b.b.a)), global0.a.c, ~_wgslsmith_add_u32(1u, var_0.a.a.x) << (4294967295u % 32u)), Struct_4(Struct_3(min(reverseBits(global0.c), _wgslsmith_sub_vec3_u32(vec3<u32>(75645u, var_0.b.a.x, 0u), global1.xzz))), var_0.b, global0.a.c, ~(~_wgslsmith_div_u32(51461u, global1.x))), countOneBits(countOneBits(var_0.b.a)));
    let var_2 = Struct_4(global0.a.b, var_0.b, var_0.c, var_1.c.x);
    var var_3 = global0.a.c.b;
    return var_1;
}

fn func_1(arg_0: Struct_2) -> Struct_4 {
    var var_0 = -abs(vec3<i32>(62944i, min(i32(-1i) * -2147483647i, 1i), u_input.b.x >> (u_input.e.x % 32u)));
    global0 = func_2(u_input.b.xww);
    global2 = array<f32, 10>();
    global2 = array<f32, 10>();
    let var_1 = ~global0.c;
    return global0.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: Struct_4) -> i32 {
    let var_0 = ~0u;
    let var_1 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.x, 10u)]);
    var var_2 = u_input.b.x;
    let var_3 = arg_3.c.b;
    let var_4 = u_input.a;
    return 1i;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> vec3<u32> {
    global3 = array<u32, 4>();
    let var_0 = u_input.b.yyz;
    global2 = array<f32, 10>();
    global2 = array<f32, 10>();
    var var_1 = min(2147483647i, -2494i);
    return _wgslsmith_sub_vec3_u32(~reverseBits(vec3<u32>(~0u, global0.a.a.a.x >> (global0.b.a.a.x % 32u), global1.x)), countOneBits(global1.xwy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(0i, ~func_4(firstTrailingBit(-u_input.b), ~abs(vec4<u32>(74342u, global0.a.b.a.x, 1u, global3[_wgslsmith_index_u32(0u, 4u)])), global0.b.a, func_1(Struct_2(19573i, vec4<f32>(global0.b.c.c, global2[_wgslsmith_index_u32(69646u, 10u)], global0.b.c.b.x, -2943f), 1564f, global0.a.c.d, Struct_1(global0.b.c.d.a)))), 389f, global0.b.c);
    let var_1 = max(~global0.a.a.a.x, ~(~_wgslsmith_mult_u32(var_0.x, global3[_wgslsmith_index_u32(abs(u_input.d), 4u)])));
    var var_2 = global0.b.a;
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.c.b.zyx * vec3<f32>(1941f, -1867f, -722f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1269f, global0.b.c.c, -2129f)), global0.a.c.b.xxw))), global0.b.c.b.wwy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.b.c.b.wzx)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-259f, global2[_wgslsmith_index_u32(var_0.x, 10u)], global0.a.c.c), _wgslsmith_f_op_vec3_f32(step(global0.a.c.b.zww, global0.a.c.b.wwy))))))));
    var var_4 = global0.b.a;
    let var_5 = (vec3<u32>(firstLeadingBit(_wgslsmith_mult_u32(18908u, 56761u)), _wgslsmith_mult_u32(var_4.a.x, var_0.x) | ~var_1, 0u) & vec3<u32>(u_input.a.x, 51608u, 65107u)) | ~(~select(func_2(vec3<i32>(u_input.c, u_input.c, u_input.c)).a.a.a, _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 7321u, var_0.x), vec3<u32>(51537u, var_0.x, 15615u)), select(vec3<bool>(false, true, false), vec3<bool>(global0.b.c.e.a, true, global0.a.c.d.a), global0.a.c.d.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~global1.x), min(~0u, ~(max(u_input.e.x, 56013u) >> (~global3[_wgslsmith_index_u32(11841u, 4u)] % 32u))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.c << (var_4.a.x % 32u), -20504i), global0.a.c.a >> (global0.c.x % 32u), ~1i >> (_wgslsmith_div_u32(u_input.e.x, var_1) % 32u), -(-32096i | u_input.c)), select(vec4<i32>(global0.b.c.a | global0.a.c.a, 2147483647i, select(global0.a.c.a, global0.b.c.a, global0.b.c.e.a), 2147483647i), vec4<i32>(~45071i, abs(global0.a.c.a), global0.b.c.a, global0.a.c.a), !select(vec4<bool>(global0.a.c.d.a, global0.a.c.d.a, true, true), vec4<bool>(true, global0.a.c.d.a, global0.a.c.d.a, global0.b.c.e.a), global0.a.c.e.a))));
}

