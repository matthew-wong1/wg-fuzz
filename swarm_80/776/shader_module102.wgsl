struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-7045i, vec2<f32>(-603f, -1229f), vec2<i32>(3957i, 40176i));

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: array<i32, 20> = array<i32, 20>(15698i, -1i, -32312i, 1i, -5464i, -1i, 0i, 22366i, -33895i, -65725i, 37015i, -4023i, 44238i, 1i, -16435i, -46367i, -1i, 1i, 82455i, 0i);

var<private> global4: array<Struct_1, 14>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = 25230i;
    var var_1 = Struct_1(i32(-1i) * -global3[_wgslsmith_index_u32(0u, 20u)], vec2<f32>(-1606f, arg_0.x), global0.c);
    let var_2 = vec2<bool>(true, true);
    let var_3 = ((max(vec2<i32>(global0.c.x, 0i) ^ global1.c, _wgslsmith_sub_vec2_i32(vec2<i32>(23648i, 2147483647i), var_1.c)) >> (vec2<u32>(~0u, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 67052u)) % vec2<u32>(32u))) ^ -(~(vec2<i32>(global1.c.x, 11583i) & global1.c))) & global1.c;
    return 80625u;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<i32>) -> Struct_1 {
    global2 = _wgslsmith_mod_u32(~(~(func_3(vec3<f32>(-209f, 215f, 380f), arg_0) << (~u_input.a.x % 32u))), 4294967295u);
    global4 = array<Struct_1, 14>();
    let var_0 = Struct_1(reverseBits(-16101i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(383f, _wgslsmith_f_op_f32(abs(-1380f))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(global0.b))))) * _wgslsmith_f_op_vec2_f32(global1.b - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1912f, -482f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(804f, global0.b.x)))))), ~abs(vec2<i32>(-1i) * -global0.c));
    let var_1 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var var_2 = true;
    return Struct_1(0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, 290f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, -410f) + global0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1483f, arg_0.b.x)))))), arg_2.yz);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec3<u32> {
    var var_0 = func_2(arg_1, ~u_input.a.zw, _wgslsmith_add_vec4_i32(reverseBits(select(vec4<i32>(37168i, global3[_wgslsmith_index_u32(u_input.a.x, 20u)], -29680i, -1i), vec4<i32>(global3[_wgslsmith_index_u32(5312u, 20u)], 56100i, global0.a, arg_0.a), vec4<bool>(false, true, true, true)) >> (abs(u_input.a) % vec4<u32>(32u))), ~vec4<i32>(reverseBits(arg_0.a), global1.a, -19329i, ~global0.c.x)));
    global1 = arg_0;
    global4 = array<Struct_1, 14>();
    let var_1 = global1.c.x;
    return _wgslsmith_div_vec3_u32(u_input.a.xzx, abs(_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a.x, ~14783u, func_3(vec3<f32>(global0.b.x, var_0.b.x, 586f), Struct_1(global0.c.x, var_0.b, vec2<i32>(arg_1.c.x, arg_0.c.x)))), firstTrailingBit(vec3<u32>(u_input.a.x, 0u, 4294967295u)) ^ vec3<u32>(5212u, 1u, u_input.a.x))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~reverseBits(~0u), max(8439u, ~(~47850u))), 20u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(300f)), _wgslsmith_f_op_f32(global1.b.x - 1360f)) - vec2<f32>(global0.b.x, 478f)), global0.c | vec2<i32>(global0.a << (_wgslsmith_mod_u32(u_input.a.x, 4610u) % 32u), global1.a));
    global3 = array<i32, 20>();
    var var_1 = _wgslsmith_clamp_vec3_u32(func_4(Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1758f, 392f)), vec2<i32>(global1.c.x, countOneBits(global1.a))), func_2(var_0, ~firstTrailingBit(u_input.a.wz), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a, -2147483647i, 1i, global1.a) ^ vec4<i32>(-1i, -2147483647i, global0.c.x, global3[_wgslsmith_index_u32(u_input.a.x, 20u)]), ~vec4<i32>(-1i, 29303i, global1.a, -7407i))), _wgslsmith_f_op_f32(-var_0.b.x)), vec3<u32>(_wgslsmith_mult_u32(1u, func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(758f, global1.b.x, 1203f) + vec3<f32>(-1000f, global0.b.x, global1.b.x)), Struct_1(var_0.c.x, global0.b, vec2<i32>(-19661i, 0i)))), u_input.a.x, ~106210u), abs(vec3<u32>(1u, 4294967295u, ~0u) & _wgslsmith_div_vec3_u32(vec3<u32>(12542u, 4294967295u, 9756u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ u_input.a.yxx)));
    global3 = array<i32, 20>();
    var_1 = _wgslsmith_clamp_vec3_u32(select(u_input.a.wwz, u_input.a.yzw & ~_wgslsmith_mod_vec3_u32(u_input.a.xxx, u_input.a.zyy), any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false))), ~_wgslsmith_add_vec3_u32(select(u_input.a.ywz | u_input.a.zyw, vec3<u32>(var_1.x, 1u, var_1.x), vec3<bool>(true, true, true)), vec3<u32>(~4294967295u, ~0u, min(0u, 1u))), u_input.a.yxz);
    return func_2(Struct_1(global3[_wgslsmith_index_u32(31833u, 20u)], _wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(-280f, _wgslsmith_f_op_f32(min(-829f, global0.b.x)))), -(vec2<i32>(25914i, var_0.a) & global1.c) << (_wgslsmith_add_vec2_u32(abs(var_1.zz), vec2<u32>(0u, u_input.a.x)) % vec2<u32>(32u))), select(vec2<u32>(_wgslsmith_mod_u32(~4294967295u, ~u_input.a.x), 1u), max(~select(vec2<u32>(var_1.x, 13860u), var_1.zx, true), _wgslsmith_mult_vec2_u32(u_input.a.wy, max(var_1.zz, u_input.a.zy))), false), vec4<i32>(2147483647i, 1i, (global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 93690u, u_input.a.x), 20u)] | global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, var_1.x), 20u)]) | -1i, ~(global3[_wgslsmith_index_u32(u_input.a.x, 20u)] << (4294967295u % 32u)) | ~global0.c.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_1();
    let var_1 = countOneBits(-min(_wgslsmith_add_vec3_i32(vec3<i32>(global0.c.x, global3[_wgslsmith_index_u32(u_input.a.x, 20u)], global1.a), vec3<i32>(var_0.a, var_0.a, arg_0.a)), -vec3<i32>(var_0.c.x, 1i, global0.a))) ^ ~(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(1u, 20u)], -2147483647i, -1i, 61282i), vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 20u)], 1i, -32910i, 1i)), max(var_0.c.x, arg_0.a), var_0.c.x ^ var_0.c.x) << (vec3<u32>(~4294967295u, ~4294967295u, ~u_input.a.x) % vec3<u32>(32u)));
    var var_2 = all(vec4<bool>(true, true, true | all(vec3<bool>(true, true, true)), true));
    let var_3 = vec3<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x * global1.b.x) - 1000f))), true, !((u_input.a.x & 33479u) <= _wgslsmith_mod_u32(u_input.a.x, ~3244u)));
    var var_4 = var_0;
    return Struct_1(_wgslsmith_sub_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, global1.c.x), vec2<i32>(~global0.a, -33746i))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, _wgslsmith_f_op_f32(round(848f))))), _wgslsmith_add_vec2_i32(-_wgslsmith_sub_vec2_i32(var_4.c, vec2<i32>(var_1.x, -17014i)) >> (vec2<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), countOneBits(76988u)) % vec2<u32>(32u)), var_1.xx));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 1u;
    global1 = func_5(func_1(), func_1());
    let var_0 = min(~vec3<u32>(func_4(global4[_wgslsmith_index_u32(u_input.a.x, 14u)], global4[_wgslsmith_index_u32(u_input.a.x, 14u)], global1.b.x).x ^ firstTrailingBit(66112u), max(max(33492u, 60762u), ~1u), u_input.a.x), _wgslsmith_div_vec3_u32(abs(_wgslsmith_mod_vec3_u32(u_input.a.wzy, ~u_input.a.wwz)), ~firstTrailingBit(vec3<u32>(1u, u_input.a.x, 20262u))));
    let var_1 = _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(~u_input.a.x, firstTrailingBit(1u))), ~countOneBits(~u_input.a.yz));
    global3 = array<i32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(10509u, max(~select(vec4<i32>(-45715i, -54199i, global1.a, global0.a), abs(vec4<i32>(global0.c.x, global1.a, global0.a, global1.a)), vec4<bool>(true, true, true, true)), ~((vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 20u)], 1i, global3[_wgslsmith_index_u32(var_0.x, 20u)], global1.c.x) & vec4<i32>(2147483647i, global1.a, -1i, global1.a)) >> (vec4<u32>(var_1.x, 1u, var_0.x, var_1.x) % vec4<u32>(32u)))));
}

