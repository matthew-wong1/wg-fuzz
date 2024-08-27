struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<bool>;

var<private> global2: Struct_3 = Struct_3(true, Struct_1(vec4<i32>(1i, 2147483647i, 36901i, 1i), vec2<i32>(-26366i, -22005i)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<i32>) -> bool {
    return all(!(!select(select(vec3<bool>(true, global2.a, true), vec3<bool>(global2.a, global2.a, false), vec3<bool>(true, false, true)), vec3<bool>(global1.x, false, global2.a), 14719u < u_input.a)));
}

fn func_1() -> vec4<bool> {
    let var_0 = true;
    global2 = Struct_3(!all(!vec4<bool>(true, true, true, var_0)), global2.b);
    global2 = Struct_3(any(vec2<bool>(global2.b.b.x < (1i >> (u_input.a % 32u)), !(!global2.a))), global2.b);
    var var_1 = !all(select(vec4<bool>(1u > u_input.a, true, any(vec4<bool>(true, true, var_0, false)), !global2.a), !(!vec4<bool>(global1.x, false, false, global2.a)), var_0));
    let var_2 = vec2<bool>(any(!select(vec3<bool>(true, true, true), !vec3<bool>(true, true, global1.x), var_0)), !all(vec3<bool>(false, 10118u > u_input.a, var_0)));
    return !select(select(!select(vec4<bool>(true, var_0, var_2.x, global2.a), vec4<bool>(false, true, var_2.x, false), vec4<bool>(var_0, true, false, true)), select(vec4<bool>(var_2.x, true, false, true), !vec4<bool>(var_2.x, global1.x, true, global2.a), !global2.a), vec4<bool>(true, !var_2.x, true, false)), select(vec4<bool>(var_0 | true, var_0 && var_2.x, global1.x, true), select(!vec4<bool>(true, global2.a, var_0, var_2.x), !vec4<bool>(global2.a, false, global1.x, true), select(vec4<bool>(true, var_0, global1.x, true), vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(false, true, global1.x, var_2.x))), select(!vec4<bool>(var_0, var_2.x, false, true), vec4<bool>(global1.x, var_0, true, var_2.x), true)), vec4<bool>(global1.x, func_2(vec3<i32>(2147483647i, -1i, -1i)), !(!var_0), var_0));
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    global2 = Struct_3(arg_0.a.x == _wgslsmith_mult_u32(1u, ~countOneBits(arg_0.a.x)), global2.b);
    global2 = Struct_3(all(func_1()), global2.b);
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -171f);
    global0 = global2.b;
    global1 = select(select(select(vec2<bool>(arg_0.a.x >= 0u, select(global2.a, global2.a, global2.a)), vec2<bool>(func_1().x, true), !global2.a && !global2.a), select(!vec2<bool>(global2.a, false), vec2<bool>(true, true), select(vec2<bool>(false, global1.x), select(vec2<bool>(global2.a, global2.a), vec2<bool>(true, false), global2.a), false)), false), !(!select(select(vec2<bool>(global1.x, true), vec2<bool>(true, true), false), func_1().yy, true)), select(vec2<bool>(global2.a & true, global1.x), !vec2<bool>(1i != u_input.b.x, select(global1.x, global2.a, false)), false));
    return Struct_1(abs(global2.b.a), _wgslsmith_add_vec2_i32(global0.b, vec2<i32>(min(i32(-1i) * -19095i, _wgslsmith_add_i32(global0.a.x, u_input.b.x)), u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(max(62620u, 63086u), u_input.a, u_input.a, ~51716u), select(~vec4<u32>(15151u, 0u, 14278u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), func_1()))));
    var var_1 = Struct_3(func_2(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 1i, -2147483647i) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<i32>(1i, u_input.b.x, 28829i))) || !global2.a, func_3(Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 4294967295u), vec4<u32>(35527u, 14675u, u_input.a, 19146u)) & firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))));
    var var_2 = global2.b;
    let var_3 = Struct_2(abs(_wgslsmith_sub_vec4_u32(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(29169u, u_input.a, 8164u, u_input.a), vec4<u32>(0u, 33605u, 122213u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), max(vec4<u32>(47456u, 0u, 4294967295u, 3106u), vec4<u32>(1u, 36576u, u_input.a, u_input.a))), vec4<u32>(_wgslsmith_mod_u32(u_input.a, 40001u), ~26646u, 55580u, ~u_input.a))));
    global2 = Struct_3((_wgslsmith_mod_u32(4294967295u, _wgslsmith_clamp_u32(u_input.a, u_input.a, var_3.a.x)) << (~u_input.a % 32u)) >= _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(15090u, 0u, 98544u)), var_3.a.zzw & var_3.a.zyy), var_3.a.yww), Struct_1(select(_wgslsmith_add_vec4_i32(-var_2.a, var_2.a >> (var_3.a % vec4<u32>(32u))), ~global0.a >> (_wgslsmith_sub_vec4_u32(vec4<u32>(79939u, u_input.a, u_input.a, 55425u), var_3.a) % vec4<u32>(32u)), true), ~var_2.a.yz));
    var var_4 = _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(_wgslsmith_add_i32(-1i, 22739i >> (0u % 32u)), _wgslsmith_add_i32(global0.a.x, ~u_input.b.x), -(18481i >> (0u % 32u))), -29807i);
    var var_5 = 66596i;
    global1 = vec2<bool>(global1.x, all(vec3<bool>(false, global1.x, true)) && (-2147483647i <= (firstLeadingBit(35602i) << ((8025u << (u_input.a % 32u)) % 32u))));
    var_5 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-442f, -582f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-259f, -225f)) - -878f)));
}

