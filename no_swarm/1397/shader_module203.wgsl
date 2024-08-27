struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(6404u, 4294967295u, 37410u), vec3<u32>(0u, 0u, 50845u), vec3<u32>(49072u, 4294967295u, 1u), vec3<u32>(30097u, 0u, 4294967295u), vec3<u32>(0u, 31540u, 7768u), vec3<u32>(36689u, 1u, 4294967295u), vec3<u32>(12859u, 1701u, 4294967295u), vec3<u32>(4294967295u, 3435u, 0u), vec3<u32>(1u, 49843u, 91022u));

var<private> global1: array<Struct_2, 17>;

var<private> global2: vec3<bool>;

var<private> global3: Struct_1;

var<private> global4: array<vec3<f32>, 31>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = u_input.b;
    var var_1 = true | global2.x;
    var_1 = !select(global2.x, global2.x, any(global2.zy));
    return _wgslsmith_f_op_f32(f32(-1f) * -575f);
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_add_i32(~2147483647i, 1i))));
    var var_1 = -(0i >> ((abs(~4294967295u) >> (~4294967295u % 32u)) % 32u));
    global0 = array<vec3<u32>, 9>();
    var var_2 = vec2<f32>(808f, 781f);
    let var_3 = var_0;
    return Struct_2(var_0);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<u32>) -> vec3<bool> {
    let var_0 = func_2(vec3<f32>(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -826f), 992f, false)), global3.a)).a;
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(round(global4[_wgslsmith_index_u32(u_input.b, 31u)])));
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a, -504f, -2684f)), vec3<f32>(arg_1.a.a, _wgslsmith_f_op_f32(-arg_1.a.a), arg_1.a.a))));
    var var_3 = any(vec3<bool>(all(!vec4<bool>(global2.x, true, global2.x, global2.x)), any(select(select(vec2<bool>(false, false), vec2<bool>(false, global2.x), vec2<bool>(true, false)), global2.xx, vec2<bool>(true, true))), global2.x));
    let var_4 = global1[_wgslsmith_index_u32(select(~arg_2.x | _wgslsmith_sub_u32(66679u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 20747u, u_input.a, 58386u), _wgslsmith_div_vec4_u32(arg_2, arg_2))), 53466u, global2.x), 17u)];
    return select(vec3<bool>(_wgslsmith_f_op_f32(1021f - -1141f) != _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.a.a, -685f))), true, global2.x), vec3<bool>(any(vec3<bool>(false, global2.x, global2.x)), _wgslsmith_f_op_f32(max(var_2.a.a, _wgslsmith_f_op_f32(arg_1.a.a * var_0.a))) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1144f * global3.a))), any(vec4<bool>(true, any(vec4<bool>(false, global2.x, global2.x, false)), true && global2.x, global2.x == true))), (true && all(vec3<bool>(global2.x, false, false))) & !all(vec4<bool>(false, true, false, true)));
}

fn func_1(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = arg_0.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(u_input.c, 31u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(809f, arg_0.a.a, 1516f), global4[_wgslsmith_index_u32(38809u, 31u)])) - global4[_wgslsmith_index_u32(~1u ^ (u_input.a | u_input.c), 31u)]), select(vec3<bool>(!global2.x, true, true), select(!vec3<bool>(true, global2.x, false), vec3<bool>(true, true, true), select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, false, true), vec3<bool>(global2.x, global2.x, global2.x))), !global2.x | true)))));
    global2 = vec3<bool>(!select(!(true && global2.x), any(global2.xy) || all(vec4<bool>(global2.x, true, global2.x, false)), all(!vec4<bool>(false, global2.x, global2.x, global2.x))), !any(vec4<bool>(global2.x, false, true, global2.x)) == true, true);
    global1 = array<Struct_2, 17>();
    var var_2 = !(!select(vec3<bool>(any(vec4<bool>(global2.x, global2.x, global2.x, global2.x)), global2.x, false), func_4(u_input.c & 22782u, func_2(vec3<f32>(385f, -1000f, 150f)), vec4<u32>(u_input.a, u_input.b, 4294967295u, 1u) >> (vec4<u32>(u_input.c, 22196u, 0u, u_input.a) % vec4<u32>(32u))), !(!vec3<bool>(global2.x, true, global2.x))));
    return countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b, _wgslsmith_div_u32(firstTrailingBit(31322u), u_input.c)), ~vec4<u32>(u_input.c, ~26206u, 12445u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 1u, 4294967295u), vec4<u32>(4294967295u, u_input.c, 98726u, u_input.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(11946u, 24590u);
    global0 = array<vec3<u32>, 9>();
    global4 = array<vec3<f32>, 31>();
    var var_1 = vec2<u32>(u_input.c, var_0.x >> (_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, var_0.x), 93176u) % 32u));
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -9793i), -vec2<i32>(2147483647i, ~(-1i))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(reverseBits(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1480i), vec2<i32>(2147483647i, -1i))), -vec2<i32>(reverseBits(13695i), 0i), vec2<i32>(-32453i << ((var_1.x | 1u) % 32u), 0i)));
    let var_3 = var_0.x;
    let var_4 = (vec4<u32>(22265u, var_1.x, _wgslsmith_mult_u32(~0u, var_3), 3165u | select(var_3, 0u, global2.x)) << (~vec4<u32>(max(var_3, var_0.x), 1u, var_0.x, reverseBits(1u)) % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(~4294967295u, 35637u, var_3 << (var_1.x % 32u), ~9762u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 7698u, 4294967295u, var_1.x) & vec4<u32>(61088u, 26040u, 7493u, var_3), func_1(global1[_wgslsmith_index_u32(1u, 17u)])) << (vec4<u32>(~0u, _wgslsmith_mult_u32(var_0.x, 108367u), u_input.c, 40770u) % vec4<u32>(32u)), vec4<u32>(var_3 & var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), _wgslsmith_clamp_vec2_u32(var_0, var_0, vec2<u32>(14176u, u_input.c))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0.x, var_1.x), var_0.x << (var_3 % 32u), 23234u), ~(var_1.x ^ u_input.c))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mult_u32(u_input.b | var_1.x, 32672u), var_3), global4[_wgslsmith_index_u32(var_0.x, 31u)]);
}

