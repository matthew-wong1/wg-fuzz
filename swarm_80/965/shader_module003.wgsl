struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: vec3<i32>,
    e: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_5, 31>;

var<private> global2: vec3<bool>;

var<private> global3: f32 = 1313f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> vec3<u32> {
    global1 = array<Struct_5, 31>();
    let var_0 = arg_0;
    return _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~countOneBits(vec3<u32>(arg_1.a.x, 4030u, arg_1.a.x)) >> ((vec3<u32>(49146u, 8153u, arg_1.a.x) >> (reverseBits(vec3<u32>(4294967295u, u_input.c, 15284u)) % vec3<u32>(32u))) % vec3<u32>(32u)), select(vec3<u32>(u_input.c, arg_1.a.x, 0u), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c, arg_1.a.x, arg_1.a.x), vec3<u32>(u_input.c, arg_1.a.x, 0u)), vec3<bool>(!global2.x, false, arg_0.a.x <= 1i)), abs(countOneBits(~vec3<u32>(arg_1.a.x, 54097u, u_input.c)))), vec3<u32>(55137u >> (firstLeadingBit(arg_1.a.x) % 32u), ~0u, 7887u));
}

fn func_2() -> Struct_4 {
    var var_0 = u_input.b.x;
    let var_1 = 23342u;
    let var_2 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32((vec3<u32>(1u, var_1, 99952u) & vec3<u32>(u_input.c, var_1, 1u)) & vec3<u32>(57081u, var_1, 1u), ~(vec3<u32>(109035u, u_input.c, u_input.c) & vec3<u32>(4294967295u, u_input.c, 65829u))), ~func_3(Struct_3(vec3<i32>(-2147483647i, -10445i, u_input.b.x), global2.x), Struct_4(vec2<u32>(32927u, 45172u), vec3<f32>(743f, -1647f, 572f), Struct_3(u_input.b, global2.x)))), func_3(Struct_3(vec3<i32>(-u_input.d.x, u_input.a, min(66440i, u_input.b.x)), all(!vec4<bool>(global2.x, true, global2.x, global2.x))), Struct_4(~vec2<u32>(9027u, var_1), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-157f, 2131f, 1208f))), Struct_3(~vec3<i32>(u_input.a, u_input.a, u_input.a), all(vec3<bool>(false, true, global2.x))))));
    let var_3 = select(select(vec4<bool>(global2.x, any(select(global2.zz, global2.zz, global2.x)), _wgslsmith_mult_i32(u_input.a, 22945i) < ~30521i, true), vec4<bool>(false, global2.x, !global2.x && global2.x, (true | global2.x) && false), vec4<bool>(any(vec3<bool>(global2.x, global2.x, global2.x)), global2.x, true, true)), !(!vec4<bool>(all(global2.yy), global2.x | global2.x, all(vec4<bool>(true, global2.x, false, false)), global2.x)), vec4<bool>(!global2.x, !(var_2.x > 1u), true, global2.x));
    let var_4 = vec3<i32>(~_wgslsmith_clamp_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.d.x, -2147483647i, 2147483647i) >> (vec4<u32>(u_input.c, 0u, 4990u, var_1) % vec4<u32>(32u)), min(vec4<i32>(39656i, -2147483647i, u_input.d.x, 1i), vec4<i32>(u_input.a, -279i, u_input.d.x, -34338i))), -(i32(-1i) * -22635i)), u_input.a, -2147483647i);
    return Struct_4(abs(~(var_2.yz | vec2<u32>(var_1, u_input.c))) ^ var_2.zx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1339f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1689f * 2221f) + _wgslsmith_f_op_f32(f32(-1f) * -937f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-547f))))), Struct_3(vec3<i32>(firstTrailingBit(8250i), u_input.b.x, -_wgslsmith_div_i32(u_input.b.x, u_input.a)), false));
}

fn func_1(arg_0: f32) -> Struct_4 {
    let var_0 = func_2();
    global2 = vec3<bool>(!var_0.c.b, any(select(select(select(vec3<bool>(global2.x, false, var_0.c.b), vec3<bool>(var_0.c.b, false, false), false), !vec3<bool>(var_0.c.b, var_0.c.b, true), true), select(select(vec3<bool>(global2.x, true, false), vec3<bool>(false, false, var_0.c.b), global2.x), !vec3<bool>(var_0.c.b, false, var_0.c.b), select(vec3<bool>(false, var_0.c.b, true), vec3<bool>(global2.x, var_0.c.b, var_0.c.b), false)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, global2.x), vec3<bool>(var_0.c.b, false, true)), select(vec3<bool>(false, false, var_0.c.b), vec3<bool>(global2.x, global2.x, var_0.c.b), vec3<bool>(false, true, false)), -23103i < var_0.c.a.x))), true);
    global3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1718f + var_0.b.x))))))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 31>();
    var var_0 = Struct_5(func_1(-873f));
    let var_1 = global2.xz;
    global1 = array<Struct_5, 31>();
    var var_2 = ~(~1u);
    global0 = var_0.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b.x), var_0.a.b.x, var_0.a.b.x, -629f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(528f, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x) + vec4<f32>(var_0.a.b.x, var_0.a.b.x, 292f, var_0.a.b.x))))), _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_mod_i32(2147483647i, var_0.a.c.a.x), _wgslsmith_mod_i32(3558i, -1i >> (u_input.c % 32u)), u_input.d.x), vec3<i32>(~(-8710i), i32(-1i) * -2147483647i, func_2().c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x))), _wgslsmith_f_op_f32(round(-451f)));
}

