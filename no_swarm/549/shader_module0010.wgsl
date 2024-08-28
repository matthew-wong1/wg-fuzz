struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<u32>, 12>;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(0u, 32082u), vec3<u32>(0u, 89310u, 1u), vec2<i32>(-10440i, i32(-2147483648)));

var<private> global3: bool = true;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> vec2<u32> {
    global0 = _wgslsmith_add_u32(52923u, countOneBits(min(4294967295u, ~firstTrailingBit(arg_1.a.x))));
    var var_0 = Struct_1(vec2<u32>(firstLeadingBit(0u), ~100196u) | abs(arg_1.a), arg_1.b >> (global2.b % vec3<u32>(32u)), ~(-select(u_input.d.zz, vec2<i32>(-10627i, global2.c.x) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), arg_0.x)));
    return ~abs(var_0.b.yx);
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -880f);
    global2 = Struct_1(~vec2<u32>(~73930u, ~49941u) << (~(~func_3(vec4<bool>(false, true, true, true), arg_0)) % vec2<u32>(32u)), arg_0.b, vec2<i32>(reverseBits(_wgslsmith_dot_vec3_i32(select(u_input.b.yzy, vec3<i32>(u_input.d.x, 2147483647i, 1i), true), vec3<i32>(2147483647i, 0i, 69790i))), 2147483647i));
    var var_1 = 1333f;
    let var_2 = countOneBits(vec3<u32>(arg_0.b.x, 1u >> (_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(arg_0.b.x, global2.b.x)) % 32u), _wgslsmith_add_u32(abs(~53932u), ~_wgslsmith_mult_u32(4294967295u, u_input.a))));
    let var_3 = arg_0;
    return 4294967295u;
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(select(func_2(Struct_1(vec2<u32>(global2.b.x, 19875u) & vec2<u32>(58366u, arg_1), vec3<u32>(global2.a.x, 1u, arg_1), vec2<i32>(0i, arg_0))), min(select(4781u, 1u, false) | ~arg_1, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c, 0u), 4294967295u)), false), abs(~func_2(Struct_1(global2.a, global2.b, u_input.b.yx))));
    let var_1 = Struct_1(vec2<u32>(var_0, 25570u), global2.b, vec2<i32>(2147483647i, max(2147483647i, -(i32(-1i) * -388i))));
    let var_2 = var_1;
    let var_3 = -1388f;
    global0 = 4294967295u ^ arg_1;
    return Struct_1(var_2.b.xy, ~(vec3<u32>(_wgslsmith_add_u32(u_input.c, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, 115922u), vec2<u32>(u_input.a, 102550u)), ~7979u) >> (vec3<u32>(~1u, ~80969u, 0u) % vec3<u32>(32u))), vec2<i32>(~select(2147483647i, ~var_1.c.x, var_3 <= 898f), abs(countOneBits(1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(global2.c.x, -44312i) != -2147483647i;
    var var_1 = !vec2<bool>(false, any(!select(vec3<bool>(var_0, false, var_0), vec3<bool>(false, false, var_0), false)));
    let var_2 = -(~abs(1i));
    let var_3 = u_input.d;
    global3 = false;
    global3 = true;
    let var_4 = global2.a.x;
    global1 = array<vec2<u32>, 12>();
    var var_5 = func_1(reverseBits(~(-u_input.d.x << (0u % 32u))), 45076u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2115f, _wgslsmith_f_op_f32(f32(-1f) * -733f))))), -(~(-global2.c)) ^ ~select(abs(var_3.yz), var_3.xy >> (global1[_wgslsmith_index_u32(12072u, 12u)] % vec2<u32>(32u)), select(vec2<bool>(var_1.x, var_0), vec2<bool>(true, var_1.x), vec2<bool>(var_0, var_1.x))));
}

