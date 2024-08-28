struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: Struct_2;

var<private> global2: i32;

var<private> global3: i32;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(countOneBits(38356u), 11u)];
    let var_1 = vec3<f32>(420f, _wgslsmith_f_op_f32(min(-1477f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -296f) - -1788f))))), -342f);
    var var_2 = ~min(global1.b.b, select(20174i, 16154i, var_1.x <= _wgslsmith_div_f32(var_1.x, -1056f)));
    return _wgslsmith_div_u32(77534u, min(global1.a, ~var_0.a));
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> u32 {
    global3 = _wgslsmith_clamp_i32(u_input.b, ~arg_1.a.d.x, 1i);
    var var_0 = u_input.c.wyw;
    let var_1 = false;
    var var_2 = select(!(!(true && !arg_1.a.b)), true, arg_1.a.b & !var_1);
    var var_3 = false;
    return _wgslsmith_div_u32(1u, global1.b.a);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(Struct_3(u_input.c.ww, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, u_input.c.x), u_input.a) > global1.a, Struct_2(func_4(func_3(false), Struct_4(Struct_3(u_input.c.xx, true, Struct_2(1u, Struct_1(global1.a, 0i)), vec2<i32>(-1i, 1i)))), Struct_1(reverseBits(1u), ~u_input.b)), (vec2<i32>(2147483647i, global1.b.b) & -vec2<i32>(1i, global1.b.b)) ^ _wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.b, global1.b.b), vec2<i32>(u_input.b, u_input.b), true), _wgslsmith_add_vec2_i32(vec2<i32>(-13362i, -5681i), vec2<i32>(32901i, u_input.b)))));
    let var_1 = !(true || !(u_input.b > global1.b.b));
    let var_2 = Struct_3(~_wgslsmith_mult_vec2_u32(~vec2<u32>(53685u, global1.a), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 42530u), var_0.a.a) << (~u_input.c.xw % vec2<u32>(32u))), !select(select(17635u, 39897u, false) <= (var_0.a.a.x << (0u % 32u)), select(true, true, true) & all(vec4<bool>(var_1, false, false, true)), var_1), var_0.a.c, ~vec2<i32>(36381i, u_input.b));
    global2 = _wgslsmith_dot_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(var_0.a.d.x, var_0.a.c.b.b, 2147483647i, var_2.c.b.b)), _wgslsmith_mod_vec4_i32(min(-countOneBits(vec4<i32>(31455i, 857i, 42011i, 1i)), (vec4<i32>(global1.b.b, 1i, -81581i, 0i) << (vec4<u32>(global1.a, global1.b.a, 0u, u_input.c.x) % vec4<u32>(32u))) | vec4<i32>(-2147483647i, u_input.b, var_2.d.x, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-11105i, _wgslsmith_clamp_i32(1i, var_0.a.d.x, 11019i), ~var_2.d.x, ~u_input.b), min(abs(vec4<i32>(global1.b.b, u_input.b, global1.b.b, -44729i)), vec4<i32>(global1.b.b, global1.b.b, 1i, -9694i)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(46697i, 1i, global1.b.b, -13236i), vec4<i32>(u_input.b, 11994i, 0i, 1i), var_0.a.b), vec4<i32>(-1i, var_2.c.b.b, -91675i, -11366i)))));
    global3 = select(firstTrailingBit(abs(~_wgslsmith_add_i32(var_0.a.d.x, u_input.b))), u_input.b, false);
    return var_2.c;
}

fn func_1() -> bool {
    global3 = -2147483647i;
    global2 = global1.b.b;
    global2 = 11565i;
    let var_0 = func_2();
    let var_1 = Struct_4(Struct_3(vec2<u32>(global1.b.a, var_0.a), select(true, any(vec2<bool>(true, true)), false), Struct_2(u_input.a, Struct_1(~18307u, 1i)), abs(abs(vec2<i32>(-2147483647i, var_0.b.b)) ^ vec2<i32>(u_input.b, u_input.b))));
    return !(0u >= select(max(4294967295u, 47006u), ~_wgslsmith_mod_u32(var_1.a.a.x, global1.b.a), all(!vec4<bool>(true, var_1.a.b, var_1.a.b, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 1734f), -1000f);
    let var_1 = -select(-1i, _wgslsmith_sub_i32(global1.b.b, global1.b.b), true) == ~(-8273i);
    global1 = Struct_2(1u, global1.b);
    var var_2 = select(!vec4<bool>(any(vec4<bool>(var_1, var_1, var_1, var_1)), var_1, any(vec4<bool>(false, true, false, false)), false), !vec4<bool>(true & any(vec4<bool>(var_1, var_1, true, var_1)), func_1(), var_1, true), true);
    let var_3 = Struct_2(countOneBits(global1.a), Struct_1(_wgslsmith_mod_u32(~(~u_input.c.x), ~(~60891u)), 4784i));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(-956f)), max(var_3.b.a, ~(var_3.a ^ global1.b.a) << (global1.b.a % 32u)));
}

