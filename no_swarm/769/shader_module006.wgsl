struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 0u);

var<private> global1: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(41436u, 50440u, 4294967295u), vec3<u32>(19072u, 0u, 13833u), vec3<u32>(0u, 78295u, 0u));

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-1363f, -496f), vec3<i32>(-1i, -10467i, 12388i), vec2<u32>(4294967295u, 14600u));

var<private> global3: vec3<i32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    let var_0 = arg_2;
    var var_1 = arg_2;
    return select(!(!select(select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, false, false)), !vec3<bool>(true, arg_0, true), all(vec2<bool>(arg_0, true)))), vec3<bool>(any(select(select(vec3<bool>(true, arg_0, true), vec3<bool>(true, arg_0, true), arg_0), !vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, true, arg_0))), true | (var_0.c.x >= 66303u), all(vec3<bool>(arg_0, any(vec3<bool>(false, arg_0, arg_0)), any(vec2<bool>(true, false))))), true);
}

fn func_3() -> f32 {
    let var_0 = firstTrailingBit(global2.b.x);
    let var_1 = abs(_wgslsmith_dot_vec3_u32(u_input.d.yyy, max(max(firstTrailingBit(global1[_wgslsmith_index_u32(u_input.d.x, 3u)]), abs(vec3<u32>(global0.x, global2.c.x, 0u))), (global1[_wgslsmith_index_u32(global2.c.x, 3u)] | vec3<u32>(u_input.b.x, 25601u, 1u)) << (~global1[_wgslsmith_index_u32(u_input.d.x, 3u)] % vec3<u32>(32u)))));
    let var_2 = var_0;
    var var_3 = Struct_1(global2.a, reverseBits(-(global2.b << (global1[_wgslsmith_index_u32(41890u, 3u)] % vec3<u32>(32u))) | ~vec3<i32>(0i, 30696i, 1i)), vec2<u32>(_wgslsmith_mod_u32(u_input.d.x >> (4294967295u % 32u), global0.x), ~firstTrailingBit(40322u)) | ~(~(~global2.c)));
    let var_4 = vec3<bool>(true, true, true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-946f, global2.a.x)))))));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: i32) -> vec3<bool> {
    var var_0 = false;
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-173f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x))), global2.a.x), select(~_wgslsmith_add_vec3_i32(-vec3<i32>(-39152i, 14878i, -2147483647i), global2.b), global2.b, any(arg_1.zy)), u_input.d.wz);
    let var_2 = ~0u;
    var var_3 = 8058i;
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(985f, -630f)), _wgslsmith_f_op_f32(func_3()))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, global2.a.x), vec2<f32>(var_1.a.x, 273f))))), var_1.b, vec2<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(40057u, 0u)), var_1.c << (~global2.c % vec2<u32>(32u))), var_2));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i >> (u_input.b.x % 32u);
    var var_1 = vec3<bool>(false, all(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), any(!select(func_1(true, 175f, Struct_1(global2.a, global2.b, global2.c), -863f), func_2(u_input.d.x, vec3<bool>(true, true, true), vec2<i32>(40102i, -2147483647i), global2.b.x), func_2(global0.x, vec3<bool>(true, true, false), vec2<i32>(u_input.a, 5670i), -2147483647i).x)));
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global2.a)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-193f, -1806f) + global2.a) * _wgslsmith_div_vec2_f32(vec2<f32>(-134f, -101f), vec2<f32>(global2.a.x, global2.a.x))), vec2<f32>(_wgslsmith_f_op_f32(376f + global2.a.x), _wgslsmith_f_op_f32(-global2.a.x)))), _wgslsmith_mult_vec3_i32((vec3<i32>(21936i, 27550i, 20787i) & global2.b) ^ _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-18729i, global3.x, -41002i), vec3<i32>(global2.b.x, global2.b.x, u_input.a)), min(global2.b, global2.b)), _wgslsmith_mod_vec3_i32(global2.b, abs(vec3<i32>(global3.x, global2.b.x, global3.x)))), reverseBits(~_wgslsmith_mod_vec2_u32(countOneBits(global2.c), vec2<u32>(53416u, 11860u))));
    global0 = ~vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.c.x, u_input.d.x, global2.c.x), _wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(u_input.d.x, 3u)], vec3<u32>(6898u, 4294967295u, global0.x))), ~(1u >> (firstTrailingBit(global0.x) % 32u)));
    global3 = vec3<i32>(-u_input.a, reverseBits(0i), 1i ^ global2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(503f)))), global2.a.x)), vec3<u32>(u_input.d.x, 14656u, global2.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, 1740f, -1398f))))));
}

