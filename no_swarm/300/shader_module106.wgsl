struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3;

var<private> global2: i32;

var<private> global3: array<i32, 5>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    let var_0 = arg_2.b;
    return firstLeadingBit(3118i ^ global3[_wgslsmith_index_u32(arg_2.b.a, 5u)]);
}

fn func_2(arg_0: vec3<f32>) -> bool {
    var var_0 = Struct_3(global1.c.x, global1.b, select(vec2<bool>(true, all(!vec2<bool>(global1.c.x, true))), global1.c, all(!vec3<bool>(global1.c.x, global1.a, true))));
    let var_1 = var_0.c.x || !global1.c.x;
    var var_2 = _wgslsmith_mod_u32(4294967295u, 4294967295u);
    let var_3 = global1.b;
    let var_4 = -_wgslsmith_clamp_i32(func_3(Struct_1(true, true, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.d, arg_0.x) + arg_0.yy)), select(!vec4<bool>(var_0.a, true, true, true), vec4<bool>(false, false, var_0.c.x, var_0.a), select(vec4<bool>(true, global1.c.x, global1.c.x, false), vec4<bool>(true, var_1, var_1, true), var_1)), Struct_3(true, var_0.b, global1.c), Struct_3(true && var_0.c.x, Struct_2(var_3.b.x, var_0.b.b, 4294967295u, 1035f), !vec2<bool>(global1.a, false))), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(var_3.c, 5u)], global3[_wgslsmith_index_u32(23345u, 5u)])), _wgslsmith_add_vec3_i32(u_input.a.wyz, firstTrailingBit(u_input.a.xzw))), 24096i);
    return true;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> Struct_3 {
    global2 = -2147483647i;
    var var_0 = select(!(!vec4<bool>(func_2(vec3<f32>(global1.b.d, 823f, 666f)), any(global1.c), all(vec4<bool>(global1.a, global1.a, global1.c.x, false)), global1.c.x && false)), vec4<bool>(global1.a, true, global1.a, false), vec4<bool>(false, select(true, true, global1.a), any(vec3<bool>(false, !global1.a, u_input.a.x > global3[_wgslsmith_index_u32(arg_0.x, 5u)])), 0u != ~global1.b.b.x));
    let var_1 = ~global1.b.a;
    let var_2 = Struct_3(var_0.x, Struct_2(arg_0.x | _wgslsmith_sub_u32(arg_1, ~arg_1), global1.b.b, 27775u << (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global1.b.b.x, global1.b.b.x), 1u, ~arg_0.x) % 32u), global1.b.d), var_0.yy);
    var var_3 = var_2.b;
    return Struct_3(!var_2.c.x, Struct_2(4294967295u, vec4<u32>(1u, var_3.a, 0u, _wgslsmith_dot_vec2_u32(var_2.b.b.ww, vec2<u32>(1u, 1u)) >> (_wgslsmith_sub_u32(16193u, global1.b.b.x) % 32u)), 2021u, var_3.d), select(!vec2<bool>(global3[_wgslsmith_index_u32(var_3.a, 5u)] != u_input.b, all(var_0.wzw)), var_2.c, select(!global1.c, !vec2<bool>(true, var_2.c.x), 1u != ~arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(global1.b.b.wwx, abs(1u >> (_wgslsmith_dot_vec2_u32(global1.b.b.yw, vec2<u32>(63788u, 84009u)) % 32u)));
    global3 = array<i32, 5>();
    global2 = _wgslsmith_mult_i32(u_input.b & 1i, -_wgslsmith_clamp_i32(~(-1i), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(45975u, global1.b.a, 52610u), vec3<u32>(0u, 4294967295u, global1.b.a)), 5u)], _wgslsmith_add_i32(0i, u_input.b)));
    global0 = 95702u;
    global0 = _wgslsmith_clamp_u32(4294967295u, abs(4294967295u), ~38479u);
    let var_0 = select(!(!select(vec2<bool>(true, global1.a), vec2<bool>(global1.c.x, true), true)), global1.c, !global1.c.x);
    global1 = func_1(vec3<u32>(_wgslsmith_clamp_u32(max(global1.b.b.x, global1.b.c), 1u, global1.b.a), 4294967295u, 1u) << (~firstLeadingBit(global1.b.b.wwy >> (global1.b.b.xzw % vec3<u32>(32u))) % vec3<u32>(32u)), 1568u);
    global2 = i32(-1i) * -1i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, global1.b.b.x, _wgslsmith_clamp_u32(global1.b.a, 21594u, countOneBits(global1.b.b.x)), ~u_input.b);
}

