struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 3>;

var<private> global3: i32;

var<private> global4: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_clamp_i32(-1i | max(-global1.a, 1i), -_wgslsmith_div_i32(45437i, -global1.a), abs(_wgslsmith_add_i32(global1.a ^ 459i, ~u_input.c.x))), select(!vec2<bool>(global1.b.x, global1.b.x), vec2<bool>(true, (4294967295u >= u_input.a) && select(true, global1.b.x, global1.b.x)), false));
    var var_1 = select(false, true, !(!all(vec4<bool>(true, global1.b.x, true, var_0.b.x)))) | !select(var_0.b.x, var_0.b.x, global1.b.x);
    var var_2 = select(!vec3<bool>(-1000f > _wgslsmith_f_op_f32(trunc(1000f)), -24834i == global1.a, var_0.b.x), vec3<bool>(true, any(select(!vec3<bool>(false, global1.b.x, global1.b.x), vec3<bool>(false, var_0.b.x, global1.b.x), global1.b.x)), global1.b.x), select(vec3<bool>(any(select(vec3<bool>(false, true, var_0.b.x), vec3<bool>(false, true, global1.b.x), global1.b.x)), u_input.a > 1u, false), select(select(select(vec3<bool>(false, var_0.b.x, false), vec3<bool>(var_0.b.x, global1.b.x, true), vec3<bool>(var_0.b.x, global1.b.x, var_0.b.x)), select(vec3<bool>(var_0.b.x, true, true), vec3<bool>(var_0.b.x, true, true), vec3<bool>(var_0.b.x, true, global1.b.x)), var_0.b.x), vec3<bool>(any(vec3<bool>(var_0.b.x, true, var_0.b.x)), true, 14891i >= global1.a), !global1.b.x), global1.b.x));
    var var_3 = global2[_wgslsmith_index_u32(u_input.a, 3u)];
    global3 = _wgslsmith_dot_vec2_i32(-vec2<i32>(abs(reverseBits(global1.a)), ~56962i), -((-u_input.c.yz & max(vec2<i32>(global1.a, var_3.a), vec2<i32>(u_input.c.x, 0i))) ^ abs(vec2<i32>(51296i, var_0.a) ^ vec2<i32>(16637i, u_input.b.x))));
    return u_input.a;
}

fn func_2() -> vec2<bool> {
    var var_0 = min(_wgslsmith_dot_vec2_i32(u_input.b.xw, u_input.b.yz), global1.a);
    let var_1 = -807f;
    let var_2 = func_3();
    var var_3 = global2[_wgslsmith_index_u32(~var_2, 3u)];
    let var_4 = var_3.a;
    return select(global0[_wgslsmith_index_u32(1u, 9u)], vec2<bool>(_wgslsmith_f_op_f32(ceil(576f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-662f)) * _wgslsmith_f_op_f32(min(403f, var_1))), ((var_3.b.x & false) | all(var_3.b)) || select(var_3.b.x, var_3.b.x && true, false)), false);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(reverseBits(global1.a), select(!(!func_2()), vec2<bool>(true, true), global1.b.x));
    global2 = array<Struct_1, 3>();
    var var_1 = arg_0;
    let var_2 = min(1u, 64348u);
    var var_3 = -1057f;
    return arg_0;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = u_input.b.xxz;
    global4 = countOneBits(min(_wgslsmith_mult_i32(~global1.a, ~4009i), -u_input.c.x));
    let var_1 = select(abs(vec3<u32>(u_input.d.x, 34687u, u_input.d.x)) | min(~vec3<u32>(4294967295u, u_input.a, 0u), vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(select(u_input.a, u_input.d.x, global1.b.x), u_input.a >> (4294967295u % 32u), u_input.d.x << (u_input.a % 32u)), any(vec4<bool>(true, global1.b.x, select(true, global1.b.x, true), global1.b.x))) | _wgslsmith_div_vec3_u32((abs(vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 3309u), vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.d.x, u_input.a, 28675u))) | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, u_input.a) >> (vec3<u32>(u_input.a, 30637u, 1u) % vec3<u32>(32u)), min(vec3<u32>(0u, u_input.d.x, 30689u), vec3<u32>(u_input.a, u_input.d.x, 5817u))), vec3<u32>(u_input.d.x, func_3(), _wgslsmith_add_u32(0u, 5372u)) >> (reverseBits(vec3<u32>(12100u, u_input.a, 131190u)) % vec3<u32>(32u)));
    let var_2 = u_input.b.xzy;
    global2 = array<Struct_1, 3>();
    return countOneBits(vec2<u32>(~_wgslsmith_dot_vec2_u32(min(vec2<u32>(var_1.x, 1u), vec2<u32>(u_input.a, var_1.x)), min(vec2<u32>(u_input.d.x, var_1.x), var_1.yx)), ~var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(u_input.a, 3u)];
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, u_input.d.x, ~u_input.d.x), 3u)];
    global4 = global1.a;
    let var_1 = _wgslsmith_div_vec2_u32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-953f, -1068f, -795f, 1153f), vec4<f32>(-569f, -1000f, 379f, -1307f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1612f, -1945f, -403f, 469f), vec4<f32>(1001f, -623f, -510f, -494f), global1.b.x)))), func_1(global2[_wgslsmith_index_u32(u_input.d.x, 3u)])), vec2<u32>(1u << (1u % 32u), u_input.a));
    var_0 = func_1(global2[_wgslsmith_index_u32(~54845u, 3u)]);
    global0 = array<vec2<bool>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(1f))), countOneBits(countOneBits(u_input.c.zz)), vec3<u32>(~(var_1.x & 0u), 12805u, 4294967295u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(629f, -191f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-503f - _wgslsmith_f_op_f32(f32(-1f) * -1329f))))), vec3<i32>(abs(1i), -(min(global1.a, 0i) << (u_input.d.x % 32u)), 11132i));
}

