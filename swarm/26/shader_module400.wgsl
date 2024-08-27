struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<f32, 14> = array<f32, 14>(629f, -1377f, 1663f, 122f, -1253f, 296f, -1585f, -1017f, -216f, -299f, -397f, 157f, -1000f, 1917f);

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<i32>(1i, -67001i, i32(-2147483648))), Struct_1(vec3<i32>(0i, 0i, 0i)), Struct_1(vec3<i32>(-27452i, -22640i, 1i)), Struct_1(vec3<i32>(1i, 2147483647i, 0i)));

var<private> global4: Struct_1 = Struct_1(vec3<i32>(31001i, -3634i, -13717i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global3 = array<Struct_1, 4>();
    global4 = arg_2;
    let var_0 = i32(-1i) * -reverseBits(-_wgslsmith_mult_i32(23583i, -3573i));
    global3 = array<Struct_1, 4>();
    global2 = array<f32, 14>();
    return ~_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_clamp_u32(0u, u_input.a, 1u), max(~2534u, 1u), ~u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), ~vec3<u32>(62513u, u_input.a, 1u) >> (vec3<u32>(u_input.a, 31516u, u_input.a) % vec3<u32>(32u))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(global4.a.x, ~global4.a.x), abs(firstLeadingBit(-31611i))), _wgslsmith_clamp_i32(-(global0.a.x >> (u_input.a % 32u)), _wgslsmith_add_i32(countOneBits(global0.a.x), u_input.b.x), -28970i), max(2147483647i, u_input.c)));
    global4 = global3[_wgslsmith_index_u32(~func_3(true, Struct_1(_wgslsmith_clamp_vec3_i32(~vec3<i32>(global0.a.x, global0.a.x, 1i), select(global0.a, global0.a, vec3<bool>(false, false, false)), var_0.a)), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(9974i, global4.a.x, u_input.c), vec3<i32>(u_input.c, -22553i, var_0.a.x)))), 4u)];
    var var_1 = var_0;
    return var_0;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>) -> vec2<i32> {
    var var_0 = abs(vec4<i32>((arg_1.a.x >> (4294967295u % 32u)) << (25367u % 32u), ~global0.a.x, _wgslsmith_mult_i32(arg_0, _wgslsmith_dot_vec2_i32(-global4.a.yy, vec2<i32>(global0.a.x, global4.a.x))), abs(2147483647i)));
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_2.xy, ~reverseBits(arg_2.wy)), 4u)];
    global2 = array<f32, 14>();
    var var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(select(arg_2, select(~arg_2, arg_2, vec4<bool>(true, true, true, true)), true), arg_2), _wgslsmith_div_u32(_wgslsmith_mult_u32(~arg_2.x << (arg_2.x % 32u), arg_2.x), _wgslsmith_add_u32(~_wgslsmith_mod_u32(4294967295u, u_input.a), 4294967295u)), _wgslsmith_sub_u32(arg_2.x, u_input.a), 1u);
    var var_2 = Struct_1(~reverseBits(abs(vec3<i32>(global4.a.x, var_0.x, u_input.c)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 23912i, var_0.x), vec3<i32>(global0.a.x, 33418i, global4.a.x))));
    return vec2<i32>(~(~(0i >> (~var_1.x % 32u))), _wgslsmith_mult_i32(1i, _wgslsmith_div_i32(var_0.x, -(~12709i))));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: bool, arg_3: vec2<f32>) -> bool {
    return false;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = global2[_wgslsmith_index_u32(~1u, 14u)];
    let var_1 = select(vec3<bool>(!all(vec4<bool>(false, true, false, true)), !any(vec2<bool>(true, true)), func_5(func_4(-5440i, func_2(), min(vec4<u32>(0u, 4294967295u, u_input.a, 77104u), vec4<u32>(4294967295u, 0u, u_input.a, 29700u))), (global4.a.zz ^ arg_1.a.zx) | vec2<i32>(global0.a.x, 1i), true, vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 14u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 14u)])))), vec3<bool>(false, false, all(vec4<bool>(true, true, true, true))), true);
    global2 = array<f32, 14>();
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(max(u_input.a, _wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a))))), _wgslsmith_dot_vec3_u32(~(reverseBits(vec3<u32>(u_input.a, u_input.a, u_input.a)) << ((vec3<u32>(1u, u_input.a, 79024u) & vec3<u32>(4294967295u, u_input.a, 1u)) % vec3<u32>(32u))), (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 14229u, u_input.a), vec3<u32>(u_input.a, 82901u, u_input.a)) & vec3<u32>(57539u, 23587u, 59599u)) >> (countOneBits(firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 116290u))) % vec3<u32>(32u)))), 14u)];
    var var_2 = -max(_wgslsmith_add_vec3_i32(-vec3<i32>(-1i, arg_1.a.x, global0.a.x), func_2().a), -global0.a << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 46907u, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, ~(~u_input.a), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a)), reverseBits(vec2<u32>(u_input.a, u_input.a)))), ~(_wgslsmith_mod_vec3_u32(vec3<u32>(932u, 4294967295u, 97474u), vec3<u32>(u_input.a, 1u, u_input.a)) << (vec3<u32>(u_input.a, 18029u, 4707u) % vec3<u32>(32u)))) % vec3<u32>(32u));
    return min(abs(_wgslsmith_sub_vec4_u32(~select(vec4<u32>(4294967295u, 5301u, u_input.a, u_input.a), vec4<u32>(u_input.a, 41490u, 1u, 1u), vec4<bool>(var_1.x, var_1.x, false, true)), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(63687u, 31075u, u_input.a, u_input.a)), firstTrailingBit(vec4<u32>(21298u, u_input.a, u_input.a, u_input.a))))), abs(select(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, ~u_input.a, 1u, 12197u), vec4<bool>(false, var_1.x, any(vec4<bool>(var_1.x, var_1.x, false, var_1.x)), !var_1.x))));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 14>();
    let var_0 = -vec2<i32>(_wgslsmith_dot_vec4_i32(~(vec4<i32>(global4.a.x, arg_3.a.x, -1i, -2147483647i) << (arg_1 % vec4<u32>(32u))), -(vec4<i32>(arg_0.a.x, 1i, -1i, arg_0.a.x) & vec4<i32>(0i, 59473i, 34372i, -24676i))), ~(-(~global0.a.x)));
    let var_1 = global4.a.x;
    let var_2 = var_0.x;
    var var_3 = Struct_1(vec3<i32>(func_4(_wgslsmith_clamp_i32(u_input.c, var_0.x, -var_2), Struct_1(global0.a), arg_1).x, _wgslsmith_clamp_i32(arg_0.a.x >> (max(arg_1.x, 972u) % 32u), 2147483647i, arg_3.a.x), 0i));
    return Struct_1(select(arg_3.a, arg_3.a, select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), any(vec4<bool>(true, false, true, false))), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true))));
}

fn func_7(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_1(global4.a);
    let var_1 = Struct_1(arg_1.a);
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(13484i, arg_0, firstLeadingBit(arg_0), firstLeadingBit(~(-2147483647i)) ^ var_1.a.x), reverseBits(~(~vec4<i32>(global0.a.x, 2147483647i, -15365i, 15920i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-42283i, 3194i, 2147483647i, -2657i), vec4<i32>(arg_0, u_input.b.x, -2147483647i, -2147483647i)))));
    global1 = array<Struct_1, 14>();
    var var_3 = 18214i;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_7(i32(-1i) * -1i, func_6(global1[_wgslsmith_index_u32(56293u, 14u)], ~select(func_1(1i, Struct_1(vec3<i32>(24304i, -1i, global0.a.x))), ~vec4<u32>(5236u, 0u, u_input.a, u_input.a), true), _wgslsmith_mod_u32(abs(u_input.a << (u_input.a % 32u)), 0u), Struct_1(abs(global4.a))), false);
    let var_0 = vec3<u32>(~1u, u_input.a, ~(~(u_input.a << (1u % 32u))));
    let var_1 = global2[_wgslsmith_index_u32(1u, 14u)];
    global1 = array<Struct_1, 14>();
    var var_2 = (func_1(func_6(global1[_wgslsmith_index_u32(var_0.x, 14u)], ~vec4<u32>(1u, var_0.x, var_0.x, 36758u), _wgslsmith_clamp_u32(4294967295u, 1u, 20920u), func_6(Struct_1(vec3<i32>(0i, 5014i, global4.a.x)), vec4<u32>(var_0.x, 8889u, u_input.a, var_0.x), var_0.x, global3[_wgslsmith_index_u32(35546u, 4u)])).a.x, global3[_wgslsmith_index_u32(1u, 4u)]) << (max(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 62653u, var_0.x, u_input.a), vec4<u32>(u_input.a, 12974u, var_0.x, var_0.x)), func_1(1i, global3[_wgslsmith_index_u32(1u, 4u)])), vec4<u32>(var_0.x, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 28869u, var_0.x), vec4<u32>(u_input.a, 27731u, 4294967295u, u_input.a)), 1u)) % vec4<u32>(32u))) | (~vec4<u32>(func_3(true, global1[_wgslsmith_index_u32(4294967295u, 14u)], Struct_1(vec3<i32>(2147483647i, -160i, global0.a.x))), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.x, var_0.x, 36597u), vec4<u32>(var_0.x, 26064u, var_0.x, 42233u)), min(24828u, var_0.x)) << (countOneBits(select(~vec4<u32>(u_input.a, u_input.a, var_0.x, u_input.a), ~vec4<u32>(12942u, 1u, 56562u, u_input.a), vec4<bool>(true, true, true, true))) % vec4<u32>(32u)));
    global1 = array<Struct_1, 14>();
    var var_3 = Struct_1(global4.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-45167i | u_input.c, global0.a.x, _wgslsmith_mult_i32(-1i, var_3.a.x), _wgslsmith_mod_i32(global0.a.x, 20605i)), ~vec4<i32>(64591i, 0i, -2147483647i, 2147483647i) | (vec4<i32>(var_3.a.x, 0i, global0.a.x, global4.a.x) ^ vec4<i32>(2147483647i, -1i, global4.a.x, -2147483647i)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(3014u, 14u)]), vec2<f32>(1276f, -1551f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(692f, 2322f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 14u)], global2[_wgslsmith_index_u32(var_0.x, 14u)])))), !all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))))), global2[_wgslsmith_index_u32(var_0.x, 14u)]);
}

