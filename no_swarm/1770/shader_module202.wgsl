struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(true, false, true, false, true, false, false, false, false, true, true, false, true, false, false, false, false, false, true, false);

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 28>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec2<f32>) -> bool {
    let var_0 = abs(max((vec4<i32>(arg_0, 22029i, arg_0, arg_0) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 1u, 4294967295u, 11402u), vec4<u32>(9494u, u_input.d, u_input.b, global1.b.e.x)) % vec4<u32>(32u))) << ((_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 22369u, arg_1.a.c), vec4<u32>(0u, global1.a.c, u_input.c, u_input.a)) & max(vec4<u32>(1u, global1.a.c, u_input.d, u_input.a), vec4<u32>(arg_1.b.c, 0u, 888u, 4294967295u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, 6137i), vec4<i32>(0i, arg_0, arg_0, arg_0)), ~vec4<i32>(-27575i, arg_0, arg_0, arg_0)), firstLeadingBit(select(vec4<i32>(arg_0, arg_0, arg_0, 21784i), vec4<i32>(arg_0, 28943i, 30638i, 4130i), false)))));
    let var_1 = ~arg_1.a.e;
    var var_2 = Struct_2(Struct_1(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.x))) <= _wgslsmith_f_op_f32(floor(1677f)), u_input.a, select(!(!global1.b.b), any(select(vec4<bool>(false, arg_1.b.a, global1.b.d, global1.a.a), vec4<bool>(global1.a.a, arg_1.b.a, true, arg_1.a.b), global1.a.d)), any(select(vec3<bool>(arg_1.a.d, global1.a.a, global1.a.d), vec3<bool>(false, true, global1.b.d), vec3<bool>(false, arg_1.a.d, true)))), ~vec3<u32>(abs(var_1.x), 1u, 62088u)), global1.b);
    let var_3 = !all(select(vec4<bool>(any(vec2<bool>(arg_1.b.b, false)), true, var_0.x == arg_0, false), !vec4<bool>(true, var_2.b.a, global1.a.d, var_2.a.a), true));
    let var_4 = -218f;
    return !arg_1.b.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    return reverseBits(~63564u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(~38479u, global1.b.c), arg_2));
}

fn func_2(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = global1.b;
    let var_1 = Struct_2(Struct_1(~(41638i << (var_0.c % 32u)) <= firstTrailingBit(53534i), false, 10461u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-114f, arg_0.x) + _wgslsmith_f_op_f32(min(426f, 760f))), global1.a.e), global1.a);
    let var_2 = func_4(Struct_1(var_0.a, true, _wgslsmith_div_u32(min(1u, global1.b.e.x), 4125u), !func_3(-2147483647i, Struct_2(Struct_1(var_1.b.d, var_1.a.d, var_1.a.c, var_1.b.d, vec3<u32>(0u, u_input.c, u_input.d)), Struct_1(var_1.a.a, global0[_wgslsmith_index_u32(u_input.a, 20u)], var_0.c, global1.a.d, var_0.e)), arg_0), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, var_1.b.e.x), vec3<u32>(global1.b.e.x, 4102u, global1.a.c), vec3<u32>(var_1.a.c, 4294967295u, global1.a.c)), vec3<u32>(4294967295u, var_0.e.x, u_input.d), firstTrailingBit(global1.b.e))), vec4<u32>(74709u, var_0.c, 0u, 41517u), vec2<u32>(36381u | var_0.c, ~61775u) >> ((~vec2<u32>(global1.b.e.x, 0u) | var_1.b.e.yy) % vec2<u32>(32u)), Struct_2(Struct_1(true, var_1.b.b && false, ~1u, true, var_0.e), Struct_1(func_3(0i, Struct_2(var_1.b, var_1.a), arg_0), !global0[_wgslsmith_index_u32(global1.a.e.x, 20u)], ~19333u, var_0.d, vec3<u32>(4294967295u, 51282u, 54397u) >> (vec3<u32>(1u, var_0.e.x, 34618u) % vec3<u32>(32u))))) != ~firstTrailingBit(var_1.b.e.x);
    global2 = array<Struct_2, 28>();
    global2 = array<Struct_2, 28>();
    return select(vec2<bool>(true, true), vec2<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(var_2, var_1.b.a, true), !vec3<bool>(false, var_1.a.d, var_2)))), !global1.a.a);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -975f) * 1262f);
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-211f, -552f), vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -722f)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-647f, 470f)) * vec2<f32>(961f, -1187f)))))).x;
    var var_2 = var_0;
    return global1.a;
}

fn func_1(arg_0: i32) -> vec4<bool> {
    global2 = array<Struct_2, 28>();
    global1 = Struct_2(func_5(u_input.c >> (u_input.d % 32u), Struct_1(any(func_2(vec2<f32>(226f, -1200f))), any(vec4<bool>(global0[_wgslsmith_index_u32(52173u, 20u)], global1.b.d, global1.b.b, false)), u_input.a & 27890u, global1.b.b, vec3<u32>(35671u, 4294967295u, ~5365u)), global2[_wgslsmith_index_u32(4294967295u, 28u)], _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(26223u), 53224u, ~u_input.b, 4294967295u << (u_input.a % 32u)), reverseBits(abs(vec4<u32>(8538u, 0u, global1.b.e.x, global1.a.c))), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.a, 1u, global1.b.e.x, 1742u)), vec4<u32>(30642u, 14272u, u_input.b, global1.a.c)))), global1.b);
    global1 = Struct_2(func_5(firstTrailingBit(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(2778u, 16452u, global1.a.e.x, 16394u), vec4<u32>(4294967295u, 0u, global1.a.c, u_input.a)))), func_5(_wgslsmith_add_u32(global1.b.c, abs(1u)), global1.b, Struct_2(Struct_1(global1.a.b, false, 1u, global1.a.a, global1.a.e), global1.b), ~vec4<u32>(1u, 85093u, 1u, u_input.a)), Struct_2(func_5(global1.a.c, global1.a, Struct_2(Struct_1(false, global1.a.d, u_input.b, global1.a.b, global1.b.e), global1.a), vec4<u32>(global1.a.e.x, 34365u, global1.b.e.x, 4294967295u)), func_5(global1.b.c >> (1u % 32u), func_5(64665u, Struct_1(true, global0[_wgslsmith_index_u32(u_input.d, 20u)], u_input.b, global1.b.a, global1.b.e), global2[_wgslsmith_index_u32(u_input.a, 28u)], vec4<u32>(4294967295u, 53791u, u_input.b, global1.a.e.x)), global2[_wgslsmith_index_u32(4294967295u, 28u)], ~vec4<u32>(global1.a.e.x, u_input.a, u_input.a, u_input.c))), ~select(~vec4<u32>(u_input.d, 1u, 5371u, u_input.c), ~vec4<u32>(1u, global1.a.e.x, 4294967295u, global1.b.c), global0[_wgslsmith_index_u32(~global1.a.c, 20u)])), Struct_1(!global0[_wgslsmith_index_u32(39772u, 20u)], true, global1.a.e.x | ~abs(u_input.d), !func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-312f, -123f))).x, _wgslsmith_div_vec3_u32(~global1.b.e, ~(~global1.b.e))));
    global1 = Struct_2(Struct_1(false, !any(vec3<bool>(true, true, false)), global1.b.c, true, select(global1.b.e, (global1.a.e | global1.a.e) << (vec3<u32>(4294967295u, global1.b.e.x, 43598u) % vec3<u32>(32u)), select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(global1.b.c, 20u)], false), vec3<bool>(global1.a.a, global1.a.a, false), true))), func_5(~(~firstLeadingBit(global1.a.c)), Struct_1(!func_3(arg_0, Struct_2(global1.b, Struct_1(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(global1.a.c, 20u)], 37326u, global1.a.a, vec3<u32>(global1.a.e.x, global1.b.e.x, 4294967295u))), vec2<f32>(-1042f, 723f)), all(vec2<bool>(global0[_wgslsmith_index_u32(36225u, 20u)], true)), countOneBits(~global1.b.c), true, ~select(vec3<u32>(u_input.c, 50783u, 68604u), vec3<u32>(4294967295u, u_input.d, u_input.a), vec3<bool>(false, false, false))), global2[_wgslsmith_index_u32(1u, 28u)], ~(~(~vec4<u32>(u_input.c, global1.b.e.x, 4294967295u, 0u)))));
    global1 = global2[_wgslsmith_index_u32(~u_input.d, 28u)];
    return select(select(!(!vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(41417u, 20u)])), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 20u)], global1.a.b, true, !all(vec2<bool>(global1.a.d, global0[_wgslsmith_index_u32(4294967295u, 20u)]))), !all(select(vec3<bool>(global1.a.b, false, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 20u)], global1.b.b, global0[_wgslsmith_index_u32(global1.a.c, 20u)]), vec3<bool>(global1.a.a, global0[_wgslsmith_index_u32(51750u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)])))), select(vec4<bool>(global0[_wgslsmith_index_u32(~1u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], _wgslsmith_clamp_u32(u_input.c, 0u, u_input.b) <= global1.b.c, global1.a.d), vec4<bool>(false, all(vec4<bool>(false, global1.a.b, global1.b.b, true)), false, !global0[_wgslsmith_index_u32(9252u << (u_input.b % 32u), 20u)]), vec4<bool>(false, all(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 20u)])), global0[_wgslsmith_index_u32(min(24208u, u_input.a) & (0u ^ u_input.d), 20u)], true)), global1.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(global1.a.c <= reverseBits(~4294967295u), all(select(!vec2<bool>(false, global0[_wgslsmith_index_u32(global1.a.e.x, 20u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(3059u, 20u)], global1.b.b), vec2<bool>(global1.a.b, global0[_wgslsmith_index_u32(global1.a.c, 20u)]), global0[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 20u)], true))), !(!global0[_wgslsmith_index_u32(15106u, 20u)])) & any(vec4<bool>(true, _wgslsmith_mod_u32(9763u, global1.a.e.x) != ~global1.a.e.x, !global1.b.a, false));
    var var_1 = !select(func_1(-(~(-25934i))), !(!(!vec4<bool>(global1.a.a, true, true, global0[_wgslsmith_index_u32(14221u, 20u)]))), select(!(!vec4<bool>(true, false, global1.a.d, true)), select(!vec4<bool>(true, true, global1.a.d, false), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(42287u, 20u)], false, global0[_wgslsmith_index_u32(9944u, 20u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 20u)], true, false, global1.a.d), vec4<bool>(global1.a.a, global1.b.b, global0[_wgslsmith_index_u32(61195u, 20u)], global0[_wgslsmith_index_u32(40929u, 20u)])), false), true));
    var var_2 = global1.b.e.xz;
    var var_3 = !(!var_1.zy);
    var var_4 = global2[_wgslsmith_index_u32(select(abs(firstTrailingBit(33344u)), ~(~u_input.a), var_1.x), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(~min(firstLeadingBit(~vec3<i32>(10045i, 0i, 2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -8727i, -10987i) << (var_4.b.e % vec3<u32>(32u)), vec3<i32>(17450i, 30784i, -38402i))), abs(global1.b.e.xz << (_wgslsmith_div_vec2_u32(~vec2<u32>(var_2.x, var_4.b.e.x), ~vec2<u32>(global1.b.e.x, var_4.a.e.x)) % vec2<u32>(32u))), vec3<i32>(i32(-1i) * -2147483647i, -2147483647i, abs(reverseBits(~7727i))));
}

