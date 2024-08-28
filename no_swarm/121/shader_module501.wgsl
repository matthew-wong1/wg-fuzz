struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> vec4<bool> {
    var var_0 = Struct_2(arg_0, ~vec2<i32>(arg_0.b.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.x, arg_0.b.x), arg_1.a.b.yw)), arg_1.c, -(_wgslsmith_dot_vec4_i32(abs(arg_0.b), -arg_0.b) ^ _wgslsmith_add_i32(-1i, global0.b.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-663f, -643f) - -2437f))));
    var var_2 = ~firstTrailingBit(4294967295u);
    return vec4<bool>(-41080i < ((-16584i & ~arg_0.b.x) << (~countOneBits(u_input.a) % 32u)), select(false, arg_2, true), ~u_input.a >= u_input.a, select(global0.c.a.x, all(global0.a.a), any(select(vec2<bool>(true, arg_2), vec2<bool>(true, false), vec2<bool>(false, false)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: i32) -> vec4<i32> {
    var var_0 = !func_3(global0.a, Struct_2(global0.a, global0.a.b.xx, Struct_1(!vec2<bool>(global0.a.a.x, global0.a.a.x), ~vec4<i32>(global0.d, global0.d, 39259i, 0i)), global0.a.b.x << ((28285u << (arg_1 % 32u)) % 32u)), global0.a.a.x);
    var var_1 = Struct_1(select(!vec2<bool>(!var_0.x, false), !vec2<bool>(var_0.x, !var_0.x), any(vec4<bool>(true, global0.c.a.x, var_0.x, var_0.x)) & var_0.x), abs(countOneBits(countOneBits(-global0.c.b))));
    var_1 = global0.a;
    var var_2 = Struct_1(!global0.c.a, -abs(reverseBits(_wgslsmith_mult_vec4_i32(global0.c.b, vec4<i32>(global0.c.b.x, -34310i, global0.a.b.x, global0.c.b.x)))));
    let var_3 = Struct_2(global0.c, vec2<i32>(arg_2, ~abs(select(var_2.b.x, global0.a.b.x, var_1.a.x))), global0.c, _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(global0.a.b.x), -43549i) ^ vec2<i32>(global0.c.b.x, ~var_1.b.x), global0.b));
    return vec4<i32>(global0.d, min(-1i, global0.d), _wgslsmith_dot_vec4_i32(firstLeadingBit(-_wgslsmith_mult_vec4_i32(global0.a.b, var_3.c.b)), abs(vec4<i32>(var_3.c.b.x, select(-214i, var_2.b.x, var_0.x), ~var_2.b.x, firstTrailingBit(var_1.b.x)))), _wgslsmith_mod_i32(var_2.b.x, _wgslsmith_sub_i32(var_1.b.x ^ _wgslsmith_dot_vec3_i32(var_3.c.b.xwy, var_3.a.b.zwx), _wgslsmith_mod_i32(i32(-1i) * -9596i, arg_2))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_2 {
    global0 = Struct_2(Struct_1(!(!global0.a.a), -arg_0.b), abs(vec2<i32>(global0.b.x, -2147483647i)), arg_0, ~(-(42178i ^ arg_0.b.x)));
    var var_0 = countOneBits(vec2<i32>(countOneBits(reverseBits(6447i)), (arg_0.b.x | 80834i) & -1i));
    global0 = Struct_2(Struct_1(arg_0.a, vec4<i32>(-24443i, i32(-1i) * -global0.b.x, _wgslsmith_mod_i32(-5717i, -56661i), ~_wgslsmith_div_i32(0i, 4531i))), _wgslsmith_mult_vec2_i32(~(select(vec2<i32>(25121i, var_0.x), vec2<i32>(var_0.x, var_0.x), global0.c.a) >> (select(vec2<u32>(arg_1, u_input.a), vec2<u32>(1u, arg_1), vec2<bool>(false, arg_0.a.x)) % vec2<u32>(32u))), -(~firstTrailingBit(vec2<i32>(0i, global0.b.x)))), global0.a, 8516i);
    var var_1 = _wgslsmith_f_op_f32(1996f - arg_2);
    let var_2 = Struct_2(arg_0, vec2<i32>(select(_wgslsmith_clamp_i32(var_0.x, arg_0.b.x, ~var_0.x), abs(global0.d), global0.a.a.x | arg_0.a.x), (_wgslsmith_mod_i32(arg_0.b.x, 40926i) | -41532i) ^ 36149i), arg_0, global0.c.b.x);
    return var_2;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    global0 = func_4(Struct_1(vec2<bool>(arg_1.a.x, true), func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 64169u, u_input.a) & vec4<u32>(u_input.a, 44443u, u_input.a, 41692u), vec4<u32>(10814u, 68293u, 4294967295u, 38372u) ^ vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), u_input.a, firstTrailingBit(9846i))), ~4294967295u, arg_0.x);
    let var_0 = -global0.d;
    let var_1 = false;
    var var_2 = Struct_2(global0.c, _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, 13879i, -1i), global0.a.b.yyx), global0.c.b.x) | max(firstTrailingBit(arg_1.b.yw), global0.a.b.yw), func_2(~vec4<u32>(50909u, u_input.a, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), reverseBits(0u), 63278i).yy), global0.a, 1i);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-785f, arg_0.x) - arg_0.wy);
    return 2977i;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    return func_4(Struct_1(!vec2<bool>(arg_1.a.a.x, -62269i >= arg_3.b.x), vec4<i32>(68729i, _wgslsmith_dot_vec2_i32(vec2<i32>(6116i, global0.d), arg_1.a.b.zz) << ((30668u | u_input.a) % 32u), abs(0i ^ arg_3.b.x), max(20965i >> (u_input.a % 32u), func_2(vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u), 0u, arg_0.b.x).x))), u_input.a, -317f).c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.c, abs(vec2<i32>(1i, 34855i)), func_5(Struct_1(global0.c.a, global0.a.b), Struct_2(global0.a, reverseBits(vec2<i32>(2147483647i, global0.c.b.x) | global0.c.b.yx), global0.c, -2147483647i), vec2<i32>(global0.c.b.x, ~func_1(vec4<f32>(-446f, 1288f, -1389f, -293f), global0.a)), Struct_1(global0.a.a, select(global0.c.b, ~vec4<i32>(0i, global0.d, 1871i, global0.d), select(vec4<bool>(true, false, global0.a.a.x, false), vec4<bool>(true, global0.c.a.x, false, global0.c.a.x), vec4<bool>(false, global0.c.a.x, global0.c.a.x, false))))), 69522i);
    global0 = Struct_2(global0.c, ~global0.c.b.xx & func_4(func_5(global0.c, func_4(Struct_1(global0.c.a, vec4<i32>(19928i, 37041i, global0.d, 2147483647i)), 1u, -530f), -vec2<i32>(global0.b.x, -53793i), global0.a), 73303u, _wgslsmith_f_op_f32(1654f + _wgslsmith_div_f32(-1269f, -1064f))).b, global0.a, -32926i);
    let var_0 = Struct_1(func_3(Struct_1(select(vec2<bool>(global0.a.a.x, global0.c.a.x), global0.a.a, global0.a.a), vec4<i32>(global0.b.x, -global0.d, -7535i, 39595i)), Struct_2(global0.a, vec2<i32>(func_5(Struct_1(global0.a.a, global0.c.b), Struct_2(Struct_1(global0.a.a, vec4<i32>(global0.c.b.x, 0i, global0.a.b.x, -2147483647i)), vec2<i32>(-32865i, 1i), Struct_1(vec2<bool>(true, false), vec4<i32>(-32209i, global0.d, global0.a.b.x, global0.c.b.x)), global0.d), vec2<i32>(global0.b.x, 10509i), global0.a).b.x, global0.c.b.x), global0.c, -(~(-1717i))), false).zw, vec4<i32>(-1i) * -vec4<i32>(global0.a.b.x, _wgslsmith_mult_i32(2147483647i, global0.b.x), -global0.d, 47623i));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -944f)));
    global0 = Struct_2(Struct_1(vec2<bool>(true, var_0.a.x), vec4<i32>(_wgslsmith_dot_vec3_i32(func_5(var_0, Struct_2(Struct_1(vec2<bool>(global0.a.a.x, var_0.a.x), vec4<i32>(global0.d, -66844i, var_0.b.x, var_0.b.x)), vec2<i32>(1i, var_0.b.x), Struct_1(var_0.a, vec4<i32>(-11019i, -28366i, global0.b.x, global0.b.x)), var_0.b.x), vec2<i32>(0i, global0.b.x), Struct_1(global0.a.a, vec4<i32>(var_0.b.x, 24385i, 0i, var_0.b.x))).b.yxw, min(vec3<i32>(1i, global0.d, 63511i), vec3<i32>(1i, var_0.b.x, -2147483647i))), i32(-1i) * -1i, var_0.b.x, -firstTrailingBit(global0.b.x))), func_5(Struct_1(func_4(func_4(global0.c, u_input.a, var_1).a, u_input.a, _wgslsmith_f_op_f32(-var_1)).c.a, -abs(global0.a.b)), Struct_2(var_0, var_0.b.xz, var_0, countOneBits(abs(-2147483647i))), global0.b, var_0).b.zw, Struct_1(vec2<bool>(global0.a.a.x, !any(vec2<bool>(global0.a.a.x, var_0.a.x))), _wgslsmith_add_vec4_i32((global0.c.b >> (vec4<u32>(63169u, 106260u, u_input.a, u_input.a) % vec4<u32>(32u))) ^ vec4<i32>(global0.d, 24952i, -2147483647i, 1i), global0.a.b)), -_wgslsmith_div_i32(i32(-1i) * -27362i, global0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1704f, (global0.a.b.zww | (var_0.b.wyx | vec3<i32>(var_0.b.x, 1i, var_0.b.x))) >> ((max(~vec3<u32>(u_input.a, 130077u, 1845u), firstLeadingBit(vec3<u32>(0u, u_input.a, u_input.a))) ^ ~(~vec3<u32>(u_input.a, u_input.a, u_input.a))) % vec3<u32>(32u)), vec2<u32>(u_input.a, 4294967295u), vec4<u32>(min(~57629u, _wgslsmith_mod_u32(57977u | u_input.a, 1u)), 72568u, u_input.a, u_input.a), var_1);
}

