struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<u32>(0u, 0u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 54251u, 0u)), Struct_1(vec3<u32>(457u, 0u, 4294967295u)), Struct_1(vec3<u32>(23863u, 4294967295u, 27013u)), Struct_1(vec3<u32>(2054u, 97752u, 14955u)), Struct_1(vec3<u32>(0u, 0u, 4294967295u)), Struct_1(vec3<u32>(1u, 0u, 18376u)), Struct_1(vec3<u32>(0u, 56526u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 34959u, 21466u)), Struct_1(vec3<u32>(29259u, 4294967295u, 0u)), Struct_1(vec3<u32>(1723u, 58086u, 19833u)), Struct_1(vec3<u32>(1u, 12006u, 1u)), Struct_1(vec3<u32>(4294967295u, 0u, 3398u)), Struct_1(vec3<u32>(4294967295u, 18650u, 5735u)), Struct_1(vec3<u32>(51201u, 79874u, 4744u)), Struct_1(vec3<u32>(4294967295u, 1u, 33982u)), Struct_1(vec3<u32>(1u, 0u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(5506u, 4294967295u, 0u)), Struct_1(vec3<u32>(0u, 1u, 4294967295u)), Struct_1(vec3<u32>(1u, 4294967295u, 0u)), Struct_1(vec3<u32>(66628u, 22116u, 4294967295u)), Struct_1(vec3<u32>(35652u, 14835u, 4294967295u)), Struct_1(vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec3<u32>(1u, 1u, 44560u)), Struct_1(vec3<u32>(22765u, 4294967295u, 1u)), Struct_1(vec3<u32>(1u, 57852u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 1u, 13910u)));

var<private> global1: Struct_3;

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<u32>(4294967295u, 36037u, 13797u)), Struct_1(vec3<u32>(13038u, 43395u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 0u, 1u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(vec3<u32>(18694u, 28100u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec3<u32>(36080u, 10480u, 2658u)), Struct_1(vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec3<u32>(4294967295u, 76312u, 0u)), Struct_1(vec3<u32>(72875u, 2442u, 73267u)), Struct_1(vec3<u32>(0u, 26990u, 4294967295u)), Struct_1(vec3<u32>(27099u, 4294967295u, 28972u)), Struct_1(vec3<u32>(79733u, 1u, 9824u)), Struct_1(vec3<u32>(53554u, 0u, 36942u)), Struct_1(vec3<u32>(34913u, 0u, 0u)), Struct_1(vec3<u32>(48311u, 0u, 15547u)), Struct_1(vec3<u32>(46684u, 42586u, 0u)), Struct_1(vec3<u32>(1u, 14544u, 1u)), Struct_1(vec3<u32>(19498u, 14459u, 4294967295u)), Struct_1(vec3<u32>(42226u, 4690u, 1u)), Struct_1(vec3<u32>(32856u, 6720u, 30501u)), Struct_1(vec3<u32>(1u, 11020u, 13107u)), Struct_1(vec3<u32>(1u, 19229u, 4294967295u)), Struct_1(vec3<u32>(1u, 1u, 19286u)), Struct_1(vec3<u32>(19690u, 16048u, 4653u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(24749u, 1220u, 1u)), Struct_1(vec3<u32>(4294967295u, 1u, 16900u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<f32> {
    var var_0 = 12592u << (~(~(1u | u_input.c) | 13552u) % 32u);
    let var_1 = true;
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(25905u, u_input.d.x, ~1u), 28u)];
    var var_3 = Struct_3(global1.a, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(abs(4294967295u), u_input.d.x, global1.b, ~u_input.a.x)), abs(~u_input.a)));
    let var_4 = u_input.a.x;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -695f), -1000f, 218f, global2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1095f, -658f, global2.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, global2.x))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global2.x, 2298f), global2.x, -1657f, _wgslsmith_f_op_f32(global2.x * global2.x))))));
}

fn func_2(arg_0: bool, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, -328f, -339f, global2.x))))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, global2.x, global2.x, 1466f))))))));
    var var_1 = min(vec3<i32>(-1i) * -((vec3<i32>(-1i, 1i, u_input.b.x) | vec3<i32>(u_input.b.x, 15971i, -8943i)) ^ ~vec3<i32>(u_input.b.x, u_input.b.x, 9253i)), abs(max(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(-1i, u_input.b.x, u_input.b.x)), -vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)), select(vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x) ^ vec3<i32>(u_input.b.x, 30641i, u_input.b.x), -vec3<i32>(19214i, -5192i, 0i), false))));
    var var_2 = -11308i;
    global3 = array<Struct_1, 28>();
    global2 = var_0.xy;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-631f, 271f))) + _wgslsmith_f_op_f32(-393f - _wgslsmith_f_op_f32(min(global2.x, 175f)))) + global2.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2500f), _wgslsmith_f_op_f32(var_0.x * global2.x)), 1000f)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec4<i32> {
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1736f, 1423f), vec2<f32>(global2.x, 1226f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) - vec2<f32>(1536f, -396f)) + vec2<f32>(-559f, -839f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 255f) + vec2<f32>(1000f, global2.x)))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -293f), _wgslsmith_f_op_f32(floor(var_1.x))))))), -170f);
    let var_2 = global3[_wgslsmith_index_u32(u_input.c, 28u)];
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_2(arg_2, _wgslsmith_dot_vec2_u32(global1.a.b.a.xz, ~(~vec2<u32>(arg_0.x, arg_0.x))))), _wgslsmith_f_op_f32(-var_1.x));
    return vec4<i32>(-1i) * -firstLeadingBit(~(~vec4<i32>(u_input.b.x, u_input.b.x, 0i, -19563i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(_wgslsmith_clamp_vec2_i32(u_input.b, max(~_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(-1i, u_input.b.x)), vec2<i32>(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, -257i))), vec2<i32>(0i, 23708i)));
    global0 = array<Struct_1, 28>();
    global3 = array<Struct_1, 28>();
    var var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_clamp_u32(85027u, 1u, 21096u), firstLeadingBit(~1u), 2012u), global1.a.a.a);
    let var_2 = vec3<i32>(u_input.b.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(-24981i, firstLeadingBit(var_0.x), -2147483647i, u_input.b.x), select(min(vec4<i32>(u_input.b.x, 31177i, var_0.x, u_input.b.x), vec4<i32>(u_input.b.x, 0i, var_0.x, -76591i)), func_1(vec4<u32>(u_input.c, 27600u, u_input.a.x, u_input.d.x), Struct_1(global1.a.b.a), false, -2147483647i), true)), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(global1.a.b.a.x, 72382u, 35001u), _wgslsmith_add_u32(1u, 7629u), countOneBits(global1.a.a.a.x), 1u), ~(u_input.a ^ u_input.a)), select(u_input.a, countOneBits(~(~vec4<u32>(u_input.c, 1u, 15743u, 14336u))), any(vec2<bool>(false, true))));
}

