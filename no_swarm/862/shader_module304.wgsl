struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(13473i, vec2<i32>(-32254i, 4324i), Struct_1(22780i));

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-1i), Struct_1(2147483647i), Struct_1(0i), Struct_1(17617i), Struct_1(24116i), Struct_1(75211i), Struct_1(2147483647i), Struct_1(55519i));

var<private> global2: f32 = 817f;

var<private> global3: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> i32 {
    global1 = array<Struct_1, 8>();
    let var_0 = false;
    var var_1 = ~u_input.c;
    var var_2 = global3.c;
    let var_3 = arg_1;
    return var_2.a;
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = false;
    var var_1 = Struct_2(-_wgslsmith_mult_i32(max(func_3(global1[_wgslsmith_index_u32(u_input.c, 8u)], Struct_2(global0.a, vec2<i32>(1035i, 55079i), Struct_1(u_input.a.x)), 0i), global3.c.a ^ 12505i), _wgslsmith_mod_i32(-73060i, global3.b.x)), global3.b, Struct_1(countOneBits(func_3(global3.c, Struct_2(-33546i, global3.b, Struct_1(-1048i)), 2147483647i)) ^ 0i));
    global3 = Struct_2(51694i, vec2<i32>(30495i, 1i << ((u_input.c & u_input.c) % 32u)) ^ _wgslsmith_mult_vec2_i32(abs(var_1.b), vec2<i32>(-48458i, var_1.a | arg_1)), var_1.c);
    let var_2 = vec4<bool>(!any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true))), true, !(23125u > (u_input.c ^ (u_input.c | 21664u))), any(select(vec4<bool>(true, u_input.c < 51972u, true, false), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false), true), vec4<bool>(11168u != u_input.c, true, true, true))));
    var var_3 = Struct_1(~(-u_input.d.x));
    return var_1.c;
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = true;
    let var_1 = min(_wgslsmith_dot_vec4_u32(~max(abs(vec4<u32>(u_input.c, u_input.c, 76280u, 24395u)), ~vec4<u32>(1353u, u_input.c, 104465u, u_input.c)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.c, 11271u, 4294967295u), vec4<u32>(u_input.c, u_input.c, 31837u, 5510u)) | vec4<u32>(u_input.c, 47430u, u_input.c, 44663u), ~(vec4<u32>(u_input.c, u_input.c, 40430u, 2053u) >> (vec4<u32>(24859u, 32188u, u_input.c, 0u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.c, u_input.c, 21490u, u_input.c)), vec4<u32>(4294967295u, 29933u, 126259u, u_input.c) << (vec4<u32>(4294967295u, 35614u, u_input.c, u_input.c) % vec4<u32>(32u))))), max(_wgslsmith_clamp_u32(u_input.c, u_input.c & _wgslsmith_div_u32(u_input.c, u_input.c), 1u), ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c, 16376u, u_input.c)), ~vec3<u32>(4294967295u, u_input.c, 1789u))));
    let var_2 = vec3<u32>(firstTrailingBit(u_input.c >> ((firstLeadingBit(u_input.c) ^ ~1u) % 32u)), ~4600u, var_1 & ~57663u);
    var var_3 = true;
    var_3 = _wgslsmith_f_op_f32(-1186f - 2034f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -153f))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(791f, -130f)), -1000f) * 1000f));
    return all(vec3<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)), true, !any(vec2<bool>(true, true))));
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<u32>) -> f32 {
    let var_0 = Struct_2(-20956i, _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(global0.b), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 79629i), max(global3.b, vec2<i32>(global0.a, 49292i))), vec2<i32>(_wgslsmith_dot_vec2_i32(global3.b, vec2<i32>(global3.b.x, 16401i)), global3.b.x)), u_input.b.xy), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(372f, -1502f, false))), u_input.b.x));
    global2 = _wgslsmith_div_f32(187f, -182f);
    return -139f;
}

fn func_1(arg_0: bool) -> Struct_2 {
    global1 = array<Struct_1, 8>();
    var var_0 = _wgslsmith_f_op_f32(func_5(~(~u_input.c), vec3<bool>(arg_0, select(arg_0, func_4(func_2(-308f, 1i)), func_4(func_2(-1031f, u_input.a.x))), ~0u > abs(u_input.c)), select(~firstTrailingBit(vec3<u32>(50470u, u_input.c, 0u)), vec3<u32>(reverseBits(u_input.c), 53534u, ~u_input.c & 1u), arg_0)));
    let var_1 = ~vec3<u32>(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, u_input.c), u_input.c >> (4294967295u % 32u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, u_input.c, 4403u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 13659u, u_input.c, u_input.c), vec4<u32>(61178u, 0u, 34030u, 0u) & vec4<u32>(u_input.c, u_input.c, u_input.c, 63354u))), _wgslsmith_add_u32(~(~0u), countOneBits(_wgslsmith_add_u32(8405u, u_input.c))));
    global3 = Struct_2(-_wgslsmith_dot_vec3_i32(u_input.b.xzz, u_input.a), -global0.b, Struct_1(global0.b.x));
    var var_2 = reverseBits(vec2<i32>(2147483647i, -6091i));
    return Struct_2(-2147483647i, -vec2<i32>(~(i32(-1i) * -55761i), ~(~var_2.x)), global3.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(false);
    let x = u_input.a;
    s_output = StorageBuffer(~(select(vec4<u32>(9320u, 98358u, 5202u, u_input.c), vec4<u32>(40080u, 70303u, 4294967295u, u_input.c), vec4<bool>(true, true, true, true)) & min(vec4<u32>(u_input.c, u_input.c, 1u, u_input.c), vec4<u32>(u_input.c, 1u, 1u, u_input.c))) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(36224u, 1u, 1u, 65180u), reverseBits(min(vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c), vec4<u32>(0u, u_input.c, 4294967295u, 36250u)))) % vec4<u32>(32u)), vec3<i32>(_wgslsmith_mult_i32(min(var_0.a ^ global3.c.a, -global3.a), _wgslsmith_dot_vec2_i32(global0.b << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), global0.b)), 4504i, min(global0.a, u_input.d.x)), 30669u, select(u_input.b, vec4<i32>(global0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, u_input.d.x, 35768i) & u_input.a, countOneBits(u_input.b.wyw)), -1i, u_input.a.x & (i32(-1i) * -2147483647i)), !vec4<bool>(true, true, u_input.c > 4294967295u, all(vec2<bool>(true, true)))), vec3<i32>(0i, i32(-1i) * -13424i, ~(~2147483647i)));
}

