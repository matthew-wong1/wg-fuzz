struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(8371i, i32(-2147483648), vec3<i32>(28133i, 2147483647i, 0i)), Struct_1(49500i, 1i, vec3<i32>(-1i, -33287i, 0i)), Struct_1(i32(-2147483648), 36028i, vec3<i32>(2147483647i, -21202i, 0i)), Struct_1(20193i, i32(-2147483648), vec3<i32>(-61728i, i32(-2147483648), 0i)), Struct_1(-1i, -1i, vec3<i32>(-1i, -1i, -89286i)), Struct_1(2637i, 24199i, vec3<i32>(10729i, -5865i, 2147483647i)), Struct_1(23752i, -48453i, vec3<i32>(1i, 0i, 30611i)), Struct_1(1i, 2147483647i, vec3<i32>(-14467i, 9447i, 1i)), Struct_1(2147483647i, 37101i, vec3<i32>(43308i, 1i, i32(-2147483648))), Struct_1(-12921i, -8448i, vec3<i32>(-29686i, 8111i, 51100i)), Struct_1(-1i, 14867i, vec3<i32>(-15530i, 0i, 28831i)), Struct_1(1i, -1i, vec3<i32>(31322i, 2147483647i, i32(-2147483648))), Struct_1(16905i, i32(-2147483648), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i)), Struct_1(-34514i, 0i, vec3<i32>(6451i, 3341i, -3757i)), Struct_1(33275i, 2147483647i, vec3<i32>(-18949i, 2147483647i, i32(-2147483648))), Struct_1(1i, -29230i, vec3<i32>(i32(-2147483648), i32(-2147483648), 0i)), Struct_1(0i, 3225i, vec3<i32>(1i, -40863i, 43928i)), Struct_1(2147483647i, 5093i, vec3<i32>(2147483647i, 48747i, i32(-2147483648))), Struct_1(i32(-2147483648), -32260i, vec3<i32>(2147483647i, 69037i, 1i)), Struct_1(i32(-2147483648), 0i, vec3<i32>(i32(-2147483648), i32(-2147483648), 0i)), Struct_1(2745i, -2147i, vec3<i32>(3721i, 5873i, -5309i)), Struct_1(-1i, -5793i, vec3<i32>(1i, 0i, i32(-2147483648))), Struct_1(-4881i, 2147483647i, vec3<i32>(1358i, i32(-2147483648), 13726i)), Struct_1(39268i, 0i, vec3<i32>(-1i, 40248i, 1788i)), Struct_1(-46372i, 0i, vec3<i32>(0i, 0i, 1i)), Struct_1(-12441i, 40171i, vec3<i32>(0i, 2895i, 4084i)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec4<u32> {
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    return vec4<u32>(0u >> (u_input.a.x % 32u), u_input.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(0u, 14681u), u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(20284u, 0u)), countOneBits(u_input.b.x)), _wgslsmith_div_vec4_u32(~u_input.b, u_input.b)), ~(1597u & min(_wgslsmith_sub_u32(4294967295u, 5444u), u_input.b.x)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_2) -> f32 {
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    let var_0 = Struct_4(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, arg_0.a.x), countOneBits(139907u)), 1u, arg_1.a), vec3<u32>(abs(0u), min(arg_1.a ^ u_input.a.x, 18305u), firstTrailingBit(1u) >> (u_input.b.x % 32u))), select(vec3<bool>(arg_3.e | arg_3.e, arg_3.e, arg_0.b.x), arg_0.b, arg_0.b.x));
    let var_1 = arg_1;
    var var_2 = firstTrailingBit(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.c.b, u_input.c, arg_2.x, -162i), vec4<i32>(-2147483647i, 5588i, -14800i, u_input.c)), 23812i, 1i, -1i) | abs(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.x, arg_3.d.b, -2147483647i, 0i), vec4<i32>(-1i, arg_3.d.c.x, 14967i, 2147483647i))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.b.x + -2076f))));
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(func_4(Struct_4(~u_input.b.ywx, arg_0.b), Struct_3(_wgslsmith_dot_vec4_u32(u_input.b, func_3())), arg_2.yz, Struct_2(72185i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(1017f, -682f)), _wgslsmith_f_op_f32(-1005f * -636f))), global0[_wgslsmith_index_u32(select(arg_0.a.x, u_input.a.x, false), 26u)], Struct_1(max(~arg_2.x, countOneBits(23514i)), 0i, select(firstTrailingBit(arg_2), max(arg_2, arg_2), arg_0.b.x)), arg_0.b.x)));
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    let var_1 = select(vec2<u32>(arg_0.a.x, 0u), _wgslsmith_mult_vec2_u32(min(arg_0.a.zy, vec2<u32>(arg_0.a.x, u_input.b.x)), ~vec2<u32>(0u, arg_0.a.x)), vec2<bool>(all(select(vec3<bool>(arg_0.b.x, false, true), vec3<bool>(true, arg_0.b.x, arg_0.b.x), arg_0.b)), !(!arg_0.b.x))) << (vec2<u32>(arg_0.a.x, _wgslsmith_dot_vec2_u32(reverseBits(arg_0.a.yy ^ arg_0.a.xy), arg_0.a.xx)) % vec2<u32>(32u));
    var var_2 = Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, ~var_1.x), firstLeadingBit(vec2<u32>(0u, 0u) & var_1)) >> ((4294967295u & (~47783u >> ((arg_0.a.x & 0u) % 32u))) % 32u));
    return Struct_3(var_2.a);
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    let var_0 = Struct_3(65748u);
    global0 = array<Struct_1, 26>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 26u)];
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    return func_2(arg_0, 1823i, abs(vec3<i32>(-1i) * -var_1.c));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_1(abs(169i), -20301i, reverseBits(abs(countOneBits(reverseBits(arg_2.yxz)))));
    let var_1 = select(select(select(!vec2<bool>(arg_3.e, arg_3.e), !vec2<bool>(arg_3.e, true), arg_3.e), !vec2<bool>(true, select(arg_3.e, arg_3.e, arg_3.e)), arg_3.e), vec2<bool>(arg_3.e, !(arg_3.e | true)), arg_3.e);
    let var_2 = u_input.b.wyz | _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 58759u, u_input.a.x), u_input.b.wwx, u_input.b.wyz), ~(vec3<u32>(arg_0.a, arg_0.a, arg_0.a) | vec3<u32>(arg_0.a, 55054u, 1u)) ^ u_input.b.yxw);
    var_0 = arg_3.c;
    let var_3 = true;
    return _wgslsmith_f_op_f32(ceil(608f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(func_1(Struct_4(u_input.b.wzz, vec3<bool>(true, false, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-508f, 524f)), ~vec4<i32>(2710i, 30037i, 1i, u_input.c), Struct_2(u_input.c, vec2<f32>(2403f, 151f), global0[_wgslsmith_index_u32(45440u, 26u)], global0[_wgslsmith_index_u32(35813u, 26u)], false))))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(751f - -277f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(-878f, _wgslsmith_f_op_f32(select(2507f, 1655f, false))))));
    let var_1 = Struct_3(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

