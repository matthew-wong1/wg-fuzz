struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<bool, 24> = array<bool, 24>(false, true, true, true, false, false, false, false, false, false, true, true, false, false, true, true, true, true, true, false, true, true, true, true);

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-272f, 2608f, -408f), vec3<i32>(-24243i, -26526i, 25826i), vec3<u32>(320u, 37684u, 1u));

var<private> global3: array<vec2<f32>, 14>;

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    var var_0 = arg_0;
    let var_1 = vec2<bool>(true, true);
    global1 = array<bool, 24>();
    let var_2 = _wgslsmith_mult_u32(~(~var_0.c.x), global4.c.x);
    var_0 = arg_0;
    return firstTrailingBit(global4.c.x);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = global2.a;
    global4 = Struct_1(arg_0.a, -global4.b | _wgslsmith_mod_vec3_i32(~global2.b ^ select(global2.b, vec3<i32>(1i, arg_0.b.x, 38167i), vec3<bool>(true, global1[_wgslsmith_index_u32(global4.c.x, 24u)], false)), vec3<i32>(2147483647i, 0i, 42711i)), ~reverseBits(select(global4.c, vec3<u32>(2465u, global2.c.x, 46761u), global1[_wgslsmith_index_u32(1u, 24u)]) & ~global4.c));
    let var_1 = arg_0.c.x;
    let var_2 = ~(~global4.c << (vec3<u32>(_wgslsmith_dot_vec3_u32(global2.c, ~arg_0.c), _wgslsmith_sub_u32(~global4.c.x, var_1), func_3(Struct_1(global2.a, vec3<i32>(2147483647i, global2.b.x, u_input.b), vec3<u32>(58815u, 1u, 0u)), _wgslsmith_div_i32(-2885i, global0.x), arg_0, _wgslsmith_f_op_vec3_f32(-global4.a))) % vec3<u32>(32u)));
    var var_3 = global1[_wgslsmith_index_u32(90359u, 24u)] | global1[_wgslsmith_index_u32(~abs(firstLeadingBit(_wgslsmith_add_u32(1u, 43216u))), 24u)];
    return Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a), vec3<i32>(0i, countOneBits(countOneBits(u_input.b)), ~1i) << (arg_0.c % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global4.c.x, u_input.a.x, 1u)), var_2), arg_0.c.x, 37171u >> (global2.c.x % 32u)));
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0;
    global4 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global4.a.x * 1000f))), global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, 1000f))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x - -176f), _wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)), arg_0.a)), var_0.b, arg_0.c);
    global2 = func_2(arg_0);
    global1 = array<bool, 24>();
    global4 = arg_0;
    return 56438u;
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = vec2<bool>(!(global1[_wgslsmith_index_u32(global4.c.x, 24u)] == all(select(vec4<bool>(false, false, false, true), vec4<bool>(global1[_wgslsmith_index_u32(global4.c.x, 24u)], global1[_wgslsmith_index_u32(global2.c.x, 24u)], global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 24u)], true, true, true)))), global1[_wgslsmith_index_u32(func_4(func_2(Struct_1(vec3<f32>(1000f, arg_0, -273f), firstLeadingBit(vec3<i32>(-1i, u_input.b, -32437i)), global4.c))), 24u)]);
    global1 = array<bool, 24>();
    var var_1 = Struct_1(vec3<f32>(arg_0, global2.a.x, global4.a.x), ~global2.b, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(global2.c.x, 9601u, u_input.a.x), vec3<u32>(11648u, 57902u, 25410u)), vec3<u32>(1726u, 1u, global2.c.x)), global4.c.x, reverseBits(global4.c.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(6622u, 1u), vec2<u32>(61792u, 4294967295u)), abs(u_input.a.x), ~u_input.a.x)));
    var var_2 = Struct_1(global4.a, global4.b, vec3<u32>(31987u, var_1.c.x, u_input.a.x));
    var var_3 = u_input.b;
    return ~var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(_wgslsmith_f_op_vec3_f32(-global2.a), select(select(max(global4.b << (vec3<u32>(1u, 15839u, u_input.a.x) % vec3<u32>(32u)), -vec3<i32>(u_input.b, global2.b.x, -43307i)), global4.b, select(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(0u, 24u)]), select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(0u, 24u)]), vec3<bool>(true, false, true), vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 24u)], false)), global1[_wgslsmith_index_u32(~51106u, 24u)])), abs(global2.b) >> (global2.c % vec3<u32>(32u)), vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, global4.c.x) & _wgslsmith_div_u32(global2.c.x, 4294967295u), 24u)], 44019u != ~global4.c.x, -1169f <= global2.a.x)), vec3<u32>(1u, ~8319u, global2.c.x));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.a)), _wgslsmith_f_op_vec3_f32(-global4.a), -20260i > global2.b.x))), ~(~global4.b), ~(~max(vec3<u32>(0u, global4.c.x, global4.c.x), vec3<u32>(6456u, global2.c.x, 13686u))) | _wgslsmith_sub_vec3_u32(abs(vec3<u32>(global4.c.x, global4.c.x, 0u)) >> (vec3<u32>(4850u, u_input.a.x, 48252u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(global2.c, vec3<u32>(1u, global2.c.x, 4294967295u)), ~vec3<u32>(0u, global2.c.x, u_input.a.x))));
    var var_1 = vec3<i32>(2147483647i, ~0i << (~u_input.a.x % 32u), func_1(_wgslsmith_f_op_f32(-global4.a.x)));
    var var_2 = reverseBits(_wgslsmith_mult_vec2_i32(var_1.zx, vec2<i32>(~global4.b.x, -_wgslsmith_div_i32(144i, global0.x))));
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.a.x, var_0.a.x, global4.a.x), vec3<f32>(global4.a.x, global4.a.x, global2.a.x), true)) * _wgslsmith_f_op_vec3_f32(-var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-147f, global4.a.x, 453f), global4.a, vec3<bool>(global1[_wgslsmith_index_u32(40958u, 24u)], false, false))))), select(reverseBits(5221u), 21898u, true) < _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.c, var_0.c), var_0.c))), ~_wgslsmith_mod_vec3_i32(var_0.b << (vec3<u32>(4294967295u, 0u, 0u) % vec3<u32>(32u)), vec3<i32>(global0.x, -28381i, 0i)), firstTrailingBit(~(~(~vec3<u32>(global4.c.x, 11356u, global2.c.x)))));
    var_1 = ~global2.b;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(-firstLeadingBit(global4.b.x), -(var_0.b.x << (var_0.c.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), -2147483647i);
}

