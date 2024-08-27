struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_2, 10>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_2 {
    var var_0 = abs(1u);
    let var_1 = Struct_1(true, _wgslsmith_mult_i32(u_input.c, _wgslsmith_clamp_i32(19974i, u_input.b.x, 23258i)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.d, firstTrailingBit(1i)), global0.e.x, _wgslsmith_div_i32(u_input.b.x, 2147483647i)), global0.e.wxx), u_input.c << (~_wgslsmith_dot_vec4_u32(~vec4<u32>(750u, 4294967295u, 6657u, u_input.a), min(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))) % 32u), firstLeadingBit(global0.e));
    var var_2 = _wgslsmith_dot_vec4_u32(min(~vec4<u32>(20158u, 0u, 20200u, u_input.a) | ~(~vec4<u32>(u_input.a, 59813u, u_input.a, 54146u)), vec4<u32>(abs(u_input.a), u_input.a, _wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 4822u))), u_input.a)), ~abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(4882u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 17739u), vec2<u32>(6010u, 21821u) ^ vec2<u32>(76320u, u_input.a)), max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 56903u), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_div_u32(15650u, 4294967295u)), 0u, 4294967295u & (104450u ^ u_input.a)) % vec4<u32>(32u)));
    var var_3 = var_1;
    var var_4 = _wgslsmith_f_op_f32(sign(-644f));
    return Struct_2(0u, 17677u);
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> vec2<i32> {
    var var_0 = global0.a;
    let var_1 = func_2();
    global2 = array<Struct_2, 10>();
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f - 457f)));
    return vec2<i32>(37253i, (i32(-1i) * -44913i) ^ u_input.d);
}

fn func_3() -> i32 {
    var var_0 = select(vec3<bool>(any(select(vec3<bool>(true, global0.a, false), !vec3<bool>(global0.a, false, true), vec3<bool>(global0.a, false, global0.a))), !all(select(vec2<bool>(false, global0.a), vec2<bool>(global0.a, global0.a), vec2<bool>(false, global0.a))), global0.a), !select(!select(vec3<bool>(true, global0.a, global0.a), vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(false, false, false)), vec3<bool>(false, all(vec2<bool>(global0.a, true)), -45646i > global0.e.x), true), vec3<bool>(((-2147483647i | global1.x) < u_input.c) & !(false && global0.a), !global0.a, true));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(13537u, u_input.a, 48998u >> (firstLeadingBit(firstLeadingBit(u_input.a)) % 32u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a, u_input.a, 38822u), vec3<u32>(29000u, 41580u, 0u), vec3<bool>(true, true, global0.a)) << (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), ~vec3<u32>(u_input.a, u_input.a, u_input.a)))), _wgslsmith_mult_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.a, 317u, 46099u, u_input.a) << (vec4<u32>(u_input.a, 1u, 4294967295u, 3106u) % vec4<u32>(32u))), vec4<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, 1u, 4294967295u, u_input.a)), reverseBits(1u), u_input.a) << ((min(vec4<u32>(20295u, u_input.a, 48919u, 1u), vec4<u32>(u_input.a, u_input.a, 2533u, u_input.a)) >> (~vec4<u32>(4664u, 4294967295u, 4294967295u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_2 = u_input.b.zxw;
    var var_3 = all(select(!vec2<bool>(global0.a, any(vec3<bool>(global0.a, global0.a, var_0.x))), !select(!var_0.yy, var_0.xx, true), select(true, global0.a, true & var_0.x)));
    global0 = Struct_1(all(select(vec3<bool>(!var_0.x, !global0.a, 0u >= var_1.x), vec3<bool>(all(var_0.zx), !global0.a, true), vec3<bool>(global0.e.x <= -1i, !global0.a, true))), -u_input.b.x, _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(abs(-2147483647i), min(var_2.x, 2147483647i)), -1i, -2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, firstLeadingBit(-2147483647i), global1.x), _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.x, -2147483647i, global1.x) << (var_1.xyz % vec3<u32>(32u)), ~vec3<i32>(0i, global1.x, global1.x)))), -1i, global0.e);
    return firstTrailingBit(-abs(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(vec2<i32>(_wgslsmith_add_i32(23154i, -52754i << (0u % 32u)), i32(-1i) * -2147483647i), firstLeadingBit(-func_1(global0.e.xw, 41425u)) | vec2<i32>(func_3(), ~global0.c.x), select(true, all(!vec2<bool>(global0.a, global0.a)), true));
    global1 = firstTrailingBit(firstLeadingBit(u_input.b.xz));
    global1 = vec2<i32>(-(~(-_wgslsmith_mod_i32(-2147483647i, -943i))), u_input.c);
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1241f);
    global0 = Struct_1(global0.a, ~u_input.d, ~((-vec3<i32>(9482i, global1.x, global0.e.x) & -vec3<i32>(global0.d, -11963i, global0.b)) | (_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -2147483647i, global1.x), u_input.b.xyz) << ((vec3<u32>(42226u, 1u, 1u) << (vec3<u32>(15365u, 4294967295u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)))), _wgslsmith_div_i32(6521i, 25262i), vec4<i32>(func_3(), -2147483647i, abs(abs(u_input.c)), i32(-1i) * -2147483647i));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(min(104743u, u_input.a)), ~_wgslsmith_clamp_u32(~29122u, 24547u, u_input.a)), 10u)];
    let var_2 = -u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>((global1.x ^ -var_2.x) << (((u_input.a & 39774u) << (var_1.a % 32u)) % 32u), 2147483647i, u_input.b.x, -1i), var_1.a);
}

