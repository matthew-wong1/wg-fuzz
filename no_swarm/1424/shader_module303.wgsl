struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: Struct_2;

var<private> global2: Struct_3;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_2(i32(-1i) * -global2.a.c.b.x, _wgslsmith_mod_vec3_u32(max(~abs(u_input.c), u_input.c), ~abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 0u, arg_0.a.b.x), u_input.c))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.e) - _wgslsmith_f_op_f32(ceil(global2.b.d.a))))), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 1i, ~arg_0.a.c.b.x), _wgslsmith_clamp_vec4_i32(firstTrailingBit(arg_0.b.d.b), -vec4<i32>(arg_0.a.c.b.x, u_input.a, -7222i, arg_0.a.c.b.x), global2.a.c.b))), Struct_1(global1.d.a, -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, global1.a, -21461i, -64691i), global1.d.b, global1.c.b)), -745f);
    var var_1 = arg_0.a.d;
    let var_2 = ~global2.a.b.yx;
    let var_3 = arg_0;
    global2 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a.e))))));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec4<u32>) -> vec4<i32> {
    global2 = Struct_3(global2.a, Struct_2(global1.a, countOneBits(abs(reverseBits(global1.b))), global1.c, global1.c, _wgslsmith_f_op_f32(func_3(arg_0.b))));
    let var_0 = arg_0.b.a.c;
    let var_1 = Struct_1(arg_0.b.a.e, vec4<i32>(global2.a.d.b.x, -1i, global2.a.d.b.x, 1i));
    return vec4<i32>(1i, abs(u_input.d), max(var_1.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-18694i, firstTrailingBit(arg_0.b.b.d.b.x)), arg_0.b.a.d.b.ww)), 0i);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec2<bool>) -> vec4<i32> {
    var var_0 = ~min(~(~(~4294967295u)), ~min(1u, ~global0[_wgslsmith_index_u32(4294967295u, 4u)]));
    global0 = array<u32, 4>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.e)) + global2.a.e) * -1198f);
    var_0 = _wgslsmith_mod_u32(6339u, 4294967295u);
    var_0 = u_input.c.x;
    return abs(-_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -22078i, 2147483647i, arg_0.x), func_2(Struct_4(303f, Struct_3(Struct_2(-10470i, vec3<u32>(23367u, global1.b.x, 1u), Struct_1(global2.a.c.a, arg_1), Struct_1(-1000f, vec4<i32>(u_input.d, 1i, -50845i, global2.b.c.b.x)), -454f), global2.a)), vec4<bool>(true, true, arg_2.x, arg_2.x), vec4<u32>(28514u, 0u, u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 4u)]))) << (abs(vec4<u32>(1u, ~4294967295u, abs(global1.b.x), abs(0u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(i32(-1i) * -global1.a, ~(u_input.c >> (vec3<u32>(1u, 7248u, 6381u) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(step(global2.b.e, _wgslsmith_f_op_f32(-397f + _wgslsmith_f_op_f32(global1.d.a * -465f)))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a, global1.d.b.x, -2147483647i, global1.a), global1.d.b) & vec4<i32>(-u_input.d, _wgslsmith_mult_i32(-357i, global1.a), -40246i, 3671i)), Struct_1(global2.a.e, select(global1.d.b, func_1(global1.d.b.yy, vec4<i32>(u_input.d, 1i, global1.d.b.x, global1.a), vec2<bool>(false, false)), vec4<bool>(true, true, true, true)) << ((vec4<u32>(global1.b.x, 35664u, 1u, 46813u) | ~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global1.b.x, 27672u, 66390u)) % vec4<u32>(32u))), global2.a.c.a);
    let var_0 = global1.b.zz;
    let var_1 = countOneBits(abs(min(abs(~vec4<u32>(global1.b.x, global1.b.x, 4294967295u, global2.b.b.x)), countOneBits(vec4<u32>(global2.a.b.x, global1.b.x, var_0.x, 54277u) | vec4<u32>(u_input.c.x, 4294967295u, 29243u, global2.a.b.x)))));
    var var_2 = vec4<i32>(firstTrailingBit(-min(0i, i32(-1i) * -2147483647i)), global2.a.d.b.x >> ((~countOneBits(1986u) >> (global1.b.x % 32u)) % 32u), global2.b.d.b.x, _wgslsmith_clamp_i32(-2147483647i, ~(~global2.a.a >> (~global1.b.x % 32u)), global1.d.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global2.b.c.b.x, 1i, 19168i), global2.a.d.b) & vec4<i32>(global1.d.b.x, 1i, 38744i, 2147483647i), global1.c.b), 0u, vec4<f32>(1496f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.d.a))), 1947f, _wgslsmith_f_op_f32(ceil(global2.b.d.a))), ~global2.b.b.zy);
}

