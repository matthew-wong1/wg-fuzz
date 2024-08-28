struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = ~(~(~vec2<u32>(global1.a, 13060u) | vec2<u32>(select(global1.a, 43079u, false), _wgslsmith_add_u32(1u, 0u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(168f, global1.c, arg_0, 184f) - vec4<f32>(global1.c, -749f, 1127f, global1.c)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, -125f, arg_0))), vec4<f32>(global1.c, -652f, arg_0, 593f))), arg_0 > global1.c))));
    var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(18471u, 1u, _wgslsmith_div_u32(var_0.x, var_0.x), ~9210u), vec4<u32>(var_0.x, global1.a, firstTrailingBit(4294967295u), 1u), ~vec4<u32>(1u, var_0.x, 70921u, var_0.x) ^ (vec4<u32>(1u, var_0.x, global1.a, 4294967295u) | vec4<u32>(20426u, 1u, 97799u, global1.a))), ~abs(~vec4<u32>(0u, global1.a, 30080u, 1u))), _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(40129u, var_0.x), ~vec2<u32>(10937u, global1.a)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(13707u, 1u, 3623u, 14555u), vec4<u32>(var_0.x, var_0.x, var_0.x, 51131u)), ~vec4<u32>(4294967295u, global1.a, 0u, var_0.x)) << (global1.a % 32u)));
    var_0 = vec2<u32>(global1.a, var_0.x) | select(_wgslsmith_clamp_vec2_u32(~reverseBits(vec2<u32>(25262u, var_0.x)), ~(~vec2<u32>(global1.a, 8854u)), vec2<u32>(max(69296u, 10182u), 1u >> (var_0.x % 32u))), ~(~reverseBits(vec2<u32>(global1.a, var_0.x))), select(select(!global1.b.xy, select(global1.b.xy, vec2<bool>(true, global1.b.x), vec2<bool>(false, false)), all(global1.b)), !global1.b.zx, vec2<bool>(!global1.b.x, arg_0 > var_1.x)));
    var_0 = select(_wgslsmith_div_vec2_u32(~abs(vec2<u32>(1u, 1u)), vec2<u32>(abs(~52772u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(73123u, 7768u, global1.a, var_0.x), vec4<u32>(global1.a, 5057u, 0u, global1.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.a, global1.a, global1.a, global1.a), vec4<u32>(global1.a, 5176u, 80663u, global1.a))))), firstTrailingBit(select(reverseBits(vec2<u32>(global1.a, var_0.x)), firstLeadingBit(~vec2<u32>(0u, global1.a)), select(global1.b.xz, select(vec2<bool>(false, false), global1.b.yz, vec2<bool>(false, true)), global1.b.yy))), false);
    return global1.b.x;
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_2(true, select(select(global1.b.yz, global1.b.zy, global1.b.xz), vec2<bool>(global1.b.x, false), false), Struct_1(1u, global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(699f + global1.c))), _wgslsmith_f_op_f32(-168f + 603f)), firstTrailingBit(-vec4<i32>(-1i, 1i, global1.d.x, u_input.b.x) >> (vec4<u32>(global1.a, 874u, global1.a, 78669u) % vec4<u32>(32u)))), vec2<i32>(-u_input.b.x, _wgslsmith_div_i32(global1.d.x >> (~31798u % 32u), 4720i)));
    global0 = var_0.a;
    let var_1 = !all(select(vec4<bool>(any(vec4<bool>(true, global1.b.x, var_0.c.b.x, global1.b.x)), func_3(-415f), true, true), vec4<bool>(arg_0.x > global1.d.x, true, true, global1.b.x), !select(vec4<bool>(global1.b.x, var_0.c.b.x, global1.b.x, var_0.b.x), vec4<bool>(true, false, false, true), vec4<bool>(var_0.c.b.x, true, true, global1.b.x))));
    let var_2 = Struct_2(u_input.a < abs(_wgslsmith_dot_vec2_i32(arg_0.xz, arg_0.xz) << (firstLeadingBit(4294967295u) % 32u)), vec2<bool>(true, var_1), Struct_1(var_0.c.a, !select(select(vec3<bool>(false, var_1, var_1), vec3<bool>(global1.b.x, false, var_0.b.x), vec3<bool>(global1.b.x, false, global1.b.x)), vec3<bool>(false, false, true), !vec3<bool>(var_1, var_0.a, var_0.c.b.x)), global1.c, -_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -28718i, var_0.c.d.x, u_input.b.x), vec4<i32>(-12790i, -21419i, u_input.b.x, 0i)) & var_0.c.d), _wgslsmith_mult_vec2_i32(~(-(~global1.d.yw)), reverseBits(reverseBits(-global1.d.wz))));
    global1 = Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(max(global1.a, global1.a), _wgslsmith_add_u32(var_2.c.a, 81203u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(global1.a, 0u), vec2<u32>(62078u, 64023u))), global1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.c - -902f)))))), -var_0.c.d);
    return Struct_2(true, var_0.c.b.zy, var_2.c, vec2<i32>(var_0.c.d.x, -4671i));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_2(global1.d | reverseBits(vec4<i32>(2147483647i, ~15366i, global1.d.x, u_input.a)));
    var var_1 = countOneBits(vec4<i32>(-2147483647i, var_0.d.x, select(12812i, _wgslsmith_dot_vec3_i32(u_input.b, ~global1.d.yzz), arg_0.b.x), _wgslsmith_dot_vec2_i32(min(var_0.d >> (vec2<u32>(var_0.c.a, arg_0.a) % vec2<u32>(32u)), vec2<i32>(2147483647i, 0i)), _wgslsmith_add_vec2_i32(min(var_0.d, vec2<i32>(u_input.a, arg_0.d.x)), firstLeadingBit(global1.d.yz)))));
    global1 = func_2(-func_2(firstTrailingBit(vec4<i32>(var_1.x, -1i, global1.d.x, arg_0.d.x) << (vec4<u32>(47128u, global1.a, 4744u, global1.a) % vec4<u32>(32u)))).c.d).c;
    let var_2 = Struct_1(45872u, arg_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(step(arg_0.c, _wgslsmith_div_f32(global1.c, arg_0.c))))), _wgslsmith_f_op_f32(1331f * 591f)), var_0.c.d | (var_0.c.d << (~abs(vec4<u32>(arg_0.a, arg_0.a, global1.a, 1u)) % vec4<u32>(32u))));
    let var_3 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0.a, ~var_0.c.a) ^ _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0.a, arg_0.a), arg_0.a), ~_wgslsmith_sub_u32(var_2.a << (var_0.c.a % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(14512u, global1.a, var_2.a), vec3<u32>(94058u, global1.a, arg_0.a)))), 37568u);
    return func_2(var_2.d).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, global1.b.x, select(!(!(false | global1.b.x)), true, true), false);
    var var_1 = !select(global1.b, select(select(global1.b, vec3<bool>(var_0.x, global1.b.x, global1.b.x), var_0.x), !global1.b, !all(vec3<bool>(true, var_0.x, global1.b.x))), (global1.b.x != (u_input.a != global1.d.x)) & false);
    let var_2 = func_1(Struct_1(global1.a, !select(!global1.b, !vec3<bool>(global1.b.x, false, false), all(var_0.yxw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-207f * 1031f))), abs(~global1.d)));
    let var_3 = -var_2.d.x | -1i;
    var var_4 = func_2(var_2.d).c.b;
    var var_5 = Struct_2(global1.b.x & true, func_1(func_1(Struct_1(var_2.a >> (var_2.a % 32u), func_1(Struct_1(global1.a, var_2.b, -927f, global1.d)).b, 585f, min(global1.d, global1.d)))).b.yz, var_2, abs(u_input.b.yz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(var_2.c)), var_5.c.a, 18771i, _wgslsmith_add_u32(~abs(var_5.c.a << (1u % 32u)), _wgslsmith_add_u32(~4294967295u, global1.a) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, 4294967295u, 1u, global1.a), ~vec4<u32>(72197u, var_5.c.a, 4294967295u, var_2.a))));
}

