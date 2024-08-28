struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<u32>(0u, 1u), vec3<i32>(-19350i, 2147483647i, 0i)), 1i);

var<private> global1: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(478f, -214f, -449f, -271f));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<u32>(49574u, 4294967295u), vec3<i32>(i32(-2147483648), 0i, -71213i)), -21739i);

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>) -> bool {
    global0 = Struct_2(global2.a, -2147483647i ^ global2.b);
    global2 = Struct_2(global2.a, reverseBits(firstTrailingBit(global3.b.x)));
    var var_0 = vec2<bool>(false, all(vec3<bool>(true, true, true)));
    let var_1 = Struct_1((u_input.c.xy ^ _wgslsmith_mult_vec2_u32(~vec2<u32>(global0.a.a.x, 0u), ~u_input.c.zz)) >> (~firstLeadingBit(vec2<u32>(75018u, 1u)) % vec2<u32>(32u)), abs(vec3<i32>(0i, 2120i, global3.b.x)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(153f * -1000f), _wgslsmith_f_op_f32(min(-445f, _wgslsmith_f_op_f32(ceil(-1445f)))));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> u32 {
    global1 = array<vec4<f32>, 1>();
    var var_0 = !(!(true & func_3(vec4<bool>(true, true, true, true), vec3<bool>(true, true, true))));
    let var_1 = 1i;
    var var_2 = Struct_2(global2.a, select(12946i, select(-11900i, _wgslsmith_dot_vec3_i32(vec3<i32>(-62234i, global2.a.b.x, 2147483647i), -vec3<i32>(4379i, global0.b, -2147483647i)), true), all(!select(vec2<bool>(false, true), vec2<bool>(false, false), true))));
    var var_3 = vec3<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, true)))) || true, all(vec2<bool>(true, true)) & (35240i > _wgslsmith_dot_vec3_i32(~global2.a.b, abs(vec3<i32>(-1i, -2147483647i, global3.b.x)))), true);
    return select(abs(78620u), _wgslsmith_mod_u32(u_input.c.x, select(min(4294967295u, 36158u), firstTrailingBit(_wgslsmith_add_u32(1u, 16523u)), !(!var_3.x))), false);
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = ~select(~global2.a.a, vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), _wgslsmith_div_u32(1u, global0.a.a.x) ^ func_2(global2.a, global0.a.a.x)), vec2<bool>(true, true));
    var_0 = u_input.c.xz;
    let var_1 = Struct_2(Struct_1(reverseBits(vec2<u32>(reverseBits(u_input.b), ~8650u)), -global2.a.b), -global3.b.x);
    global0 = Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(firstLeadingBit(global2.a.a), vec2<u32>(~1718u, ~global0.a.a.x)), select(vec3<i32>(1i, 20177i, var_1.b), -global3.b, any(vec4<bool>(true, true, false, false)))), _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_div_i32(-2147483647i, -1i), -global2.a.b.x, _wgslsmith_add_i32(var_1.b << (global2.a.a.x % 32u), global2.a.b.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, global2.b, global2.b), -var_1.a.b), -global3.b)));
    let var_2 = ~1i;
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~global0.a.a.x << (global3.a.x % 32u)) >> (1u % 32u));
    global0 = Struct_2(global2.a, 25630i);
    global2 = Struct_2(global0.a, global2.a.b.x);
    let var_1 = true;
    global3 = global2.a;
    var var_2 = vec4<bool>(var_1, var_1, select((-2147483647i >> (~4294967295u % 32u)) > (_wgslsmith_sub_i32(global3.b.x, 62813i) | global2.b), true, select(var_1, !var_1 && var_1, var_1)), true);
    var var_3 = Struct_2(global0.a, global0.b);
    global1 = array<vec4<f32>, 1>();
    let var_4 = func_1(vec3<f32>(-143f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1045f)), 415f));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global2.a.a, global2.a.a), 15797u));
}

