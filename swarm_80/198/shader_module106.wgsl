struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31>;

var<private> global1: vec2<i32> = vec2<i32>(46329i, -630i);

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec4<bool>(true, false, false, true), true, vec2<i32>(2147483647i, 1i)), Struct_1(vec4<bool>(false, false, false, false), true, vec2<i32>(-6396i, -46166i)), Struct_1(vec4<bool>(false, true, true, false), false, vec2<i32>(2147483647i, -27557i)), Struct_1(vec4<bool>(true, false, false, true), false, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec4<bool>(false, true, true, false), true, vec2<i32>(-59235i, -19713i)), Struct_1(vec4<bool>(true, false, false, false), true, vec2<i32>(-20041i, 24807i)), Struct_1(vec4<bool>(false, true, true, false), true, vec2<i32>(1i, 1i)), Struct_1(vec4<bool>(false, true, true, false), true, vec2<i32>(9528i, -36972i)), Struct_1(vec4<bool>(true, false, true, false), false, vec2<i32>(-38715i, 50423i)), Struct_1(vec4<bool>(false, false, false, false), false, vec2<i32>(15592i, 5735i)), Struct_1(vec4<bool>(false, true, true, true), true, vec2<i32>(-1i, 40747i)), Struct_1(vec4<bool>(true, false, false, false), true, vec2<i32>(-1i, 35742i)), Struct_1(vec4<bool>(true, false, false, true), true, vec2<i32>(-1i, 0i)), Struct_1(vec4<bool>(true, true, false, true), true, vec2<i32>(6423i, i32(-2147483648))), Struct_1(vec4<bool>(false, false, false, true), true, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec4<bool>(true, true, true, false), true, vec2<i32>(-1i, -1i)), Struct_1(vec4<bool>(false, true, true, false), false, vec2<i32>(25540i, -38799i)), Struct_1(vec4<bool>(true, true, false, false), true, vec2<i32>(0i, -37831i)), Struct_1(vec4<bool>(true, true, false, true), true, vec2<i32>(2147483647i, -6958i)), Struct_1(vec4<bool>(false, false, true, true), false, vec2<i32>(-1i, 34454i)), Struct_1(vec4<bool>(true, false, true, false), true, vec2<i32>(33933i, 4249i)), Struct_1(vec4<bool>(false, false, true, false), true, vec2<i32>(0i, -31108i)), Struct_1(vec4<bool>(false, true, false, false), true, vec2<i32>(-1i, 1i)), Struct_1(vec4<bool>(false, false, false, false), false, vec2<i32>(-25961i, -1i)), Struct_1(vec4<bool>(false, true, true, true), true, vec2<i32>(i32(-2147483648), -7965i)), Struct_1(vec4<bool>(true, false, false, false), false, vec2<i32>(i32(-2147483648), 17792i)));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: f32) -> vec4<u32> {
    let var_0 = true;
    let var_1 = true;
    global0 = array<vec3<u32>, 31>();
    global2 = true;
    var var_2 = arg_0;
    return u_input.b;
}

fn func_2(arg_0: bool) -> vec3<i32> {
    var var_0 = abs(-(vec4<i32>(_wgslsmith_div_i32(global1.x, u_input.c), ~(-1i), 2147483647i, u_input.c ^ global1.x) ^ -_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, -2147483647i), vec4<i32>(global1.x, 16084i, 3426i, 1i))));
    var var_1 = _wgslsmith_dot_vec4_u32(~(func_3(Struct_1(vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0, vec2<i32>(28785i, 1i)), vec4<i32>(2147483647i, var_0.x, u_input.c, -61022i) << (vec4<u32>(u_input.a, 10410u, 20291u, u_input.a) % vec4<u32>(32u)), all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(max(192f, 1000f))) >> (u_input.b % vec4<u32>(32u))), min(u_input.b, abs(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.a, u_input.d.x, 68432u)) ^ vec4<u32>(u_input.d.x, 0u, 19854u, 34606u))));
    var var_2 = Struct_1(select(!(!(!vec4<bool>(arg_0, arg_0, arg_0, arg_0))), select(!(!vec4<bool>(true, true, false, arg_0)), vec4<bool>(arg_0, all(vec4<bool>(true, false, false, true)), true, any(vec2<bool>(arg_0, arg_0))), vec4<bool>(true, global1.x <= global1.x, arg_0, any(vec3<bool>(arg_0, false, arg_0)))), true), arg_0, var_0.xx);
    let var_3 = select(vec4<bool>(false, true, (any(var_2.a.yw) | false) | !(!arg_0), true), var_2.a, true);
    var var_4 = abs(max(-2147483647i, var_0.x));
    return var_0.wyx;
}

fn func_1() -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.b.x, 26u)];
    let var_1 = var_0.b;
    var var_2 = func_2((34001u <= ~(u_input.b.x << (4294967295u % 32u))) && !(!(false || var_0.a.x)));
    global2 = false;
    var var_3 = Struct_1(var_0.a, true, var_0.c);
    return global3[_wgslsmith_index_u32(~abs(u_input.a << (u_input.d.x % 32u)), 26u)];
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(1u, 26u)];
    var var_1 = 0i;
    var var_2 = _wgslsmith_f_op_f32(sign(561f));
    let var_3 = 0i;
    let var_4 = func_1();
    return Struct_1(!vec4<bool>(true, false, true, any(var_4.a.xw)), arg_0.b, min(vec2<i32>(arg_0.c.x, func_1().c.x), countOneBits(arg_2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), firstTrailingBit(~u_input.b.x), func_1(), Struct_1(vec4<bool>(true, !all(vec4<bool>(false, false, false, true)), true, all(vec4<bool>(true, false, false, false))), !(!all(vec3<bool>(true, false, false))), -vec2<i32>(8668i, i32(-1i) * -1602i)));
    var var_1 = Struct_1(func_4(var_0, 20022u, func_4(var_0, u_input.b.x, func_1(), var_0), Struct_1(!var_0.a, select(var_0.a.x | var_0.a.x, !var_0.a.x, select(var_0.b, true, false)), _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.c, global1.x), func_1().c))).a, all(vec4<bool>(var_0.b, func_4(Struct_1(vec4<bool>(true, true, false, var_0.b), false, var_0.c), 0u, global3[_wgslsmith_index_u32(u_input.d.x, 26u)], Struct_1(var_0.a, var_0.a.x, vec2<i32>(u_input.c, var_0.c.x))).b && (var_0.a.x == false), true, _wgslsmith_f_op_f32(floor(-928f)) <= -644f)), _wgslsmith_mod_vec2_i32(var_0.c, vec2<i32>(-2147483647i, -2147483647i)));
    let var_2 = max(vec2<i32>(2147483647i, _wgslsmith_div_i32(-1i, firstTrailingBit(max(u_input.c, var_1.c.x)))), vec2<i32>(max(select(u_input.c, -23407i, false), u_input.c) >> (0u % 32u), global1.x));
    var var_3 = ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 138125u, u_input.d.x, 0u) << (u_input.b % vec4<u32>(32u)), u_input.b)));
    global1 = var_1.c ^ var_2;
    var var_4 = min(0u, 38209u);
    var var_5 = ~func_2(true);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(var_5.x, _wgslsmith_mult_i32(global1.x >> (u_input.d.x % 32u), 19078i), -global1.x), -1545f);
}

