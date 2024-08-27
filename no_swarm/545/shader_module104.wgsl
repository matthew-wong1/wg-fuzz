struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: vec4<i32> = vec4<i32>(60955i, 0i, -5150i, 11257i);

var<private> global2: vec2<u32> = vec2<u32>(1u, 34951u);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec2<f32>) -> vec2<u32> {
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    global2 = ~(((vec2<u32>(u_input.a.x, 1u) << (select(vec2<u32>(u_input.a.x, 107338u), u_input.b.zy, true) % vec2<u32>(32u))) | u_input.c) & _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 80423u, 4294967295u), vec3<u32>(global2.x, 4294967295u, global2.x)), firstTrailingBit(4294967295u)), vec2<u32>(max(1u, global2.x), ~4294967295u)));
    let var_0 = global0[_wgslsmith_index_u32(1u, 28u)];
    var var_1 = ~_wgslsmith_sub_vec2_u32(~u_input.c, u_input.c);
    return ~(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a, var_0.c.yy))) | _wgslsmith_clamp_vec2_u32(select(var_0.c.yx, ~_wgslsmith_mod_vec2_u32(u_input.c, u_input.c), select(select(vec2<bool>(var_0.e.x, true), var_0.e.zx, var_0.e.zx), var_0.e.xz, var_0.e.x)), vec2<u32>(0u, ~116424u), max(~(~vec2<u32>(u_input.c.x, var_1.x)), ~(~vec2<u32>(0u, var_1.x))));
}

fn func_3() -> i32 {
    global2 = u_input.c;
    let var_0 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(24561u, 28u)], _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, global1.x, global1.x), vec3<i32>(global1.x, 490i, 12572i), _wgslsmith_div_vec3_i32(vec3<i32>(global1.x, -2147483647i, global1.x), vec3<i32>(0i, -1i, -1i))), ~global1.wzx), global0[_wgslsmith_index_u32(~38160u, 28u)]), Struct_1(global1.wz, _wgslsmith_sub_vec3_i32(global1.wwy, -(~global1.wyx)), ~countOneBits(vec3<u32>(u_input.d, u_input.c.x, 4294967295u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(341f, -1347f, _wgslsmith_f_op_f32(ceil(-910f)))), vec3<bool>(global2.x <= max(0u, global2.x), any(vec4<bool>(false, false, true, false)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))))), vec3<bool>(true, true, true));
    global1 = reverseBits(-vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.a.c.a.x, -14718i), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, var_0.a.b.x, global1.x), vec4<i32>(global1.x, -52507i, 366i, var_0.a.c.b.x))), -1i >> (global2.x % 32u), _wgslsmith_mult_i32(-2147483647i, 1i), firstLeadingBit(abs(var_0.a.a.a.x))));
    global1 = select(abs(vec4<i32>(max(-1523i, 1i), _wgslsmith_clamp_i32(0i, 0i, 8685i), 2147483647i, -global1.x)) ^ ((~vec4<i32>(54395i, global1.x, global1.x, global1.x) ^ -vec4<i32>(global1.x, var_0.b.b.x, 2147483647i, global1.x)) & ~(~vec4<i32>(49065i, 31059i, 64764i, -2147483647i))), _wgslsmith_mult_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 2147483647i, var_0.a.c.b.x, var_0.b.b.x) | vec4<i32>(var_0.b.a.x, var_0.a.c.a.x, global1.x, -34033i), _wgslsmith_add_vec4_i32(vec4<i32>(0i, -1i, global1.x, 0i), vec4<i32>(var_0.a.c.a.x, var_0.a.b.x, 24520i, var_0.a.c.b.x))), ~vec4<i32>(2147483647i, -5960i, global1.x, -1i), all(vec3<bool>(var_0.b.e.x, var_0.a.c.e.x, true))), firstTrailingBit(-abs(vec4<i32>(global1.x, 0i, var_0.b.a.x, -2147483647i)))), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 43388i), abs(global1.wy))) >= var_0.b.b.x);
    let var_1 = Struct_2(global0[_wgslsmith_index_u32((81762u << (_wgslsmith_sub_u32(1u, ~u_input.b.x) % 32u)) & 1u, 28u)], ~(~_wgslsmith_mult_vec3_i32(var_0.b.b, vec3<i32>(0i, -21001i, 1i))), Struct_1(var_0.a.b.xz, ~(-min(vec3<i32>(2147483647i, -2147483647i, -1i), var_0.a.a.b)), var_0.a.c.c, _wgslsmith_f_op_vec3_f32(abs(var_0.a.a.d)), vec3<bool>(true, _wgslsmith_f_op_f32(trunc(var_0.a.c.d.x)) >= -516f, false)));
    return ~var_0.b.b.x >> ((_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, var_1.a.c.x | 0u), _wgslsmith_mult_u32(global2.x >> (var_0.a.a.c.x % 32u), 4294967295u)) ^ ~var_0.b.c.x) % 32u);
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    global1 = vec4<i32>(~(28620i & (arg_2 | (arg_2 | 1i))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(global1.zz, arg_1.a.b.yz), -func_3(), func_3()), _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.b.x, firstLeadingBit(-35210i), _wgslsmith_sub_i32(-11623i, 43417i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 40956i, -23438i) ^ vec3<i32>(0i, global1.x, global1.x), ~global1.zxw))), _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(-global1.zxw, abs(global1.yww))), abs(vec3<i32>(arg_2, 1i, 0i))), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, -_wgslsmith_clamp_i32(global1.x, 0i, arg_1.a.b.x)), global1.xy));
    var var_0 = arg_1;
    var var_1 = Struct_3(Struct_2(Struct_1(vec2<i32>(firstLeadingBit(-42727i), var_0.c.b.x ^ var_0.b.x), _wgslsmith_div_vec3_i32(-global1.xzy, global1.wyw), arg_1.c.c, vec3<f32>(_wgslsmith_f_op_f32(abs(243f)), _wgslsmith_f_op_f32(-arg_1.a.d.x), _wgslsmith_f_op_f32(arg_1.a.d.x + -875f)), !vec3<bool>(arg_1.c.e.x, arg_1.a.e.x, var_0.a.e.x)), min(var_0.a.b, vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.b.zz, vec2<i32>(arg_1.a.a.x, -44467i)), max(var_0.c.b.x, 39046i), arg_1.b.x << (1u % 32u))), var_0.a), Struct_1(-(_wgslsmith_mod_vec2_i32(var_0.a.b.yy, arg_1.c.b.zz) >> (u_input.b.zz % vec2<u32>(32u))), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c.a.x, arg_2, -1i), max(vec3<i32>(var_0.b.x, arg_2, 9224i) << (vec3<u32>(51251u, u_input.d, 61634u) % vec3<u32>(32u)), ~global1.zyz)), arg_1.c.c, var_0.c.d, vec3<bool>(~arg_1.c.c.x > _wgslsmith_mult_u32(u_input.b.x, arg_1.c.c.x), 48564u == var_0.c.c.x, any(vec4<bool>(false, var_0.c.e.x, arg_1.a.e.x, false)))), select(select(select(select(var_0.a.e, vec3<bool>(var_0.a.e.x, true, false), vec3<bool>(true, arg_1.a.e.x, false)), vec3<bool>(var_0.c.e.x, var_0.a.e.x, true), all(var_0.a.e.yy)), !vec3<bool>(arg_1.a.e.x, var_0.a.e.x, var_0.a.e.x), arg_1.c.e.x), vec3<bool>(!(!var_0.a.e.x), false, any(select(vec4<bool>(var_0.a.e.x, arg_1.a.e.x, arg_1.c.e.x, arg_1.a.e.x), vec4<bool>(var_0.c.e.x, false, arg_1.a.e.x, arg_1.c.e.x), true))), vec3<bool>(any(arg_1.a.e.xy), (0u > global2.x) | all(var_0.a.e.yy), firstTrailingBit(70392i) < -arg_1.a.b.x)));
    var var_2 = arg_1.a.e;
    let var_3 = Struct_2(Struct_1(max(-arg_1.c.b.yy >> (var_1.a.a.c.yy % vec2<u32>(32u)), var_0.a.b.xx), arg_1.b, ~(~reverseBits(var_0.a.c)), arg_1.c.d, vec3<bool>(true, var_2.x, arg_1.a.e.x)), abs(_wgslsmith_clamp_vec3_i32(arg_1.a.b ^ countOneBits(vec3<i32>(var_0.a.a.x, var_0.c.b.x, var_1.a.c.b.x)), vec3<i32>(~var_1.a.b.x, reverseBits(arg_1.b.x), -var_0.b.x), abs(vec3<i32>(-1i, var_1.a.c.b.x, 1i)))), Struct_1(var_1.a.a.a, (vec3<i32>(arg_1.b.x, arg_2, var_1.b.a.x) ^ vec3<i32>(-31746i, global1.x, -1i)) | ~(~arg_1.a.b), vec3<u32>(_wgslsmith_dot_vec3_u32(var_1.a.c.c, var_0.c.c) >> (~1u % 32u), firstTrailingBit(35537u << (u_input.a.x % 32u)), select(global2.x, _wgslsmith_mult_u32(0u, global2.x), false & arg_1.a.e.x)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1798f), -2845f), 1047f, arg_0), vec3<bool>(any(var_1.c.xy), any(vec2<bool>(true, true)), !(!var_1.b.e.x))));
    return Struct_1(vec2<i32>(max(_wgslsmith_clamp_i32(-32704i, var_1.a.b.x | -15229i, arg_2), _wgslsmith_sub_i32(var_3.b.x, -80740i)), -2147483647i), vec3<i32>(32758i, -47724i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(var_1.b.b.x, -36784i, 0i, var_3.a.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 14651i, arg_2, var_0.c.a.x), vec4<i32>(var_3.a.a.x, 0i, global1.x, var_1.a.c.b.x))), ~(-vec4<i32>(-1i, -55341i, -45863i, var_1.a.b.x)))), var_3.c.c, vec3<f32>(var_3.c.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.a.d.x, _wgslsmith_f_op_f32(ceil(var_0.c.d.x)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.d.x * 375f), _wgslsmith_div_f32(-374f, -980f))), 1f), var_0.c.e);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    global1 = ~vec4<i32>(-1i, _wgslsmith_sub_i32(1i, min(21580i, -2699i)), _wgslsmith_dot_vec3_i32(firstTrailingBit(arg_0.b) << (arg_0.c % vec3<u32>(32u)), abs(min(vec3<i32>(arg_0.a.x, global1.x, global1.x), vec3<i32>(4701i, 21171i, arg_0.a.x)))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, global1.x, 1i, 9076i) << (vec4<u32>(u_input.b.x, 4294967295u, 5985u, 18132u) % vec4<u32>(32u)), select(vec4<i32>(-2147483647i, arg_0.a.x, 41672i, -62679i), vec4<i32>(global1.x, -1i, global1.x, global1.x), vec4<bool>(false, arg_0.e.x, false, true))), _wgslsmith_div_vec4_i32(~vec4<i32>(global1.x, -2147483647i, 10040i, -22616i), firstTrailingBit(vec4<i32>(1i, global1.x, 27062i, -1i)))));
    let var_0 = !(!func_2(-1571f, Struct_2(Struct_1(arg_0.b.yz, arg_0.b, arg_0.c, arg_0.d, vec3<bool>(true, arg_0.e.x, arg_0.e.x)), arg_0.b, Struct_1(vec2<i32>(arg_0.a.x, global1.x), arg_0.b, vec3<u32>(global2.x, u_input.b.x, 4294967295u), vec3<f32>(arg_0.d.x, 1747f, arg_0.d.x), arg_0.e)), _wgslsmith_add_i32(-77318i, firstLeadingBit(32535i))).e.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(374f * 1005f) + 1986f));
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.d.x + arg_1.x), _wgslsmith_f_op_f32(3060f * 1151f), arg_0.d.x > -1378f))))));
    return arg_0;
}

fn func_5(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = vec3<bool>(select(arg_0.a.e.x | arg_0.a.e.x, select(true, true, false), arg_0.a.e.x), arg_0.c.e.x, select(true, any(select(vec4<bool>(false, arg_0.c.e.x, false, false), vec4<bool>(true, arg_0.c.e.x, false, true), false)) && arg_0.a.e.x, arg_0.a.e.x | arg_0.a.e.x));
    global2 = ~(func_1(arg_0.a.d.yz) << (func_2(_wgslsmith_f_op_f32(arg_0.a.d.x + 1662f), Struct_2(func_2(1468f, arg_0, 1i), vec3<i32>(0i, arg_0.a.a.x, global1.x), Struct_1(arg_0.b.yx, vec3<i32>(1i, 1i, arg_0.a.b.x), vec3<u32>(1u, global2.x, global2.x), vec3<f32>(arg_0.c.d.x, -1829f, 792f), vec3<bool>(true, false, arg_0.c.e.x))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -305f), arg_0, global1.x | global1.x).a.x).c.xy % vec2<u32>(32u)));
    let var_1 = !vec3<bool>(var_0.x & true, var_0.x, arg_0.a.e.x);
    global0 = array<Struct_1, 28>();
    let var_2 = Struct_3(Struct_2(Struct_1(func_2(_wgslsmith_f_op_f32(min(-535f, arg_0.c.d.x)), Struct_2(global0[_wgslsmith_index_u32(0u, 28u)], vec3<i32>(arg_0.c.b.x, 31808i, arg_0.b.x), arg_0.c), global1.x >> (global2.x % 32u)).b.xx, vec3<i32>(2147483647i, 7882i, global1.x), _wgslsmith_div_vec3_u32(~u_input.b, vec3<u32>(4294967295u, 1u, global2.x) | arg_0.a.c), vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.d.x + 908f), arg_0.a.d.x, _wgslsmith_f_op_f32(-2496f + -746f)), select(func_4(global0[_wgslsmith_index_u32(0u, 28u)], vec2<f32>(arg_0.c.d.x, -2187f)).e, arg_0.c.e, var_0.x)), -vec3<i32>(22701i, _wgslsmith_dot_vec2_i32(arg_0.c.a, global1.zw), 0i | arg_0.c.b.x), func_2(_wgslsmith_f_op_f32(ceil(arg_0.a.d.x)), arg_0, arg_0.a.a.x)), Struct_1(global1.yw, vec3<i32>(1i, 0i, 369i), u_input.b, vec3<f32>(1227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(154f)) * arg_0.c.d.x), 880f), arg_0.a.e), !(!(!(!arg_0.c.e))));
    return vec4<bool>(var_1.x, arg_0.c.e.x, false, all(select(vec4<bool>(var_1.x, true, var_1.x, true), !(!vec4<bool>(false, false, var_0.x, var_2.a.a.e.x)), vec4<bool>(any(vec4<bool>(var_1.x, var_1.x, false, var_0.x)), 41198u < arg_0.c.c.x, true, any(vec2<bool>(true, var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -263f;
    global2 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_0), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, var_0))), true)))));
    let var_1 = vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(global1.x, 0i, -2147483647i, global1.x) << (vec4<u32>(global2.x, 1u, 1u, 4294967295u) % vec4<u32>(32u))), vec4<i32>(-1i) * -vec4<i32>(global1.x, 13155i, 17067i, global1.x));
    var var_2 = func_5(Struct_2(func_4(func_2(-2608f, Struct_2(global0[_wgslsmith_index_u32(4294967295u, 28u)], var_1.zxz, Struct_1(vec2<i32>(-2147483647i, -29977i), var_1.wwx, u_input.b, vec3<f32>(267f, -797f, 731f), vec3<bool>(false, false, false))), i32(-1i) * -6891i), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(var_0, var_0))), vec3<i32>(-34640i, 0i, _wgslsmith_sub_i32(var_1.x, global1.x) ^ reverseBits(global1.x)), Struct_1(~_wgslsmith_mult_vec2_i32(vec2<i32>(0i, global1.x), var_1.yx), -(vec3<i32>(-28283i, var_1.x, global1.x) ^ vec3<i32>(global1.x, var_1.x, -2147483647i)), ~vec3<u32>(u_input.c.x, u_input.a.x, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, 223f, var_0), vec3<f32>(var_0, var_0, -1021f)))), func_2(-688f, Struct_2(Struct_1(vec2<i32>(0i, var_1.x), vec3<i32>(0i, 1i, var_1.x), vec3<u32>(70855u, u_input.b.x, 21713u), vec3<f32>(var_0, -2261f, -863f), vec3<bool>(true, false, false)), vec3<i32>(7751i, var_1.x, -1i), global0[_wgslsmith_index_u32(u_input.e, 28u)]), ~var_1.x).e)));
    global0 = array<Struct_1, 28>();
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(144f, 235f, -453f) * vec3<f32>(-1739f, 1722f, var_0))))), _wgslsmith_dot_vec4_i32(vec4<i32>(-37602i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(11073i, -2147483647i), min(1i, -2147483647i)), countOneBits(min(32854i, var_1.x)), -var_1.x << (global2.x % 32u)), vec4<i32>(0i, -func_4(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], vec2<f32>(var_0, var_0)).a.x, -45600i, i32(-1i) * -4746i)), ~var_1, 193f);
}

