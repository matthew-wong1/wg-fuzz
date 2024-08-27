struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(1u), Struct_1(21815u), Struct_1(11113u), Struct_1(4294967295u), Struct_1(37761u), Struct_1(4294967295u), Struct_1(84170u), Struct_1(4294967295u));

var<private> global2: array<Struct_1, 24>;

var<private> global3: Struct_1 = Struct_1(52358u);

var<private> global4: vec4<f32> = vec4<f32>(1411f, 267f, -136f, 219f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = select(!vec3<bool>(true, false, _wgslsmith_mult_i32(u_input.b.x, 0i) == 0i), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), any(vec3<bool>(false, true, false))), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, all(vec3<bool>(false, true, false)))), select(vec3<bool>(true, false, all(vec2<bool>(false, false))), vec3<bool>(true, false, u_input.b.x >= u_input.b.x), false)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true)));
    global1 = array<Struct_1, 8>();
    var var_1 = _wgslsmith_dot_vec4_i32(select(max(~u_input.b & -vec4<i32>(9909i, u_input.b.x, 48708i, u_input.b.x), _wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, 11062i, -2147483647i), vec4<i32>(36300i, u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_mult_vec4_i32(u_input.b, u_input.b | ~vec4<i32>(2147483647i, u_input.b.x, 782i, -2147483647i)), select(!select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), vec4<bool>(true, any(vec3<bool>(var_0.x, var_0.x, var_0.x)), any(var_0.zz), true), true)), vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-6504i, 0i, u_input.b.x, -2147483647i)), u_input.b.x, ~(-1i), select((u_input.b.x >> (arg_0.x % 32u)) >> (1u % 32u), u_input.b.x, true)));
    let var_2 = _wgslsmith_mod_vec4_u32(firstTrailingBit(u_input.c), ~u_input.c);
    let var_3 = _wgslsmith_mult_vec3_u32(reverseBits(~abs(var_2.xyy << (var_2.zxx % vec3<u32>(32u)))), ~(~vec3<u32>(arg_0.x, u_input.c.x, u_input.a.x)));
    return ~(~(~_wgslsmith_sub_u32(var_3.x, arg_1.a) | var_2.x));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<bool>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = arg_2.x;
    global0 = Struct_1(_wgslsmith_add_u32(arg_3.x, _wgslsmith_add_u32(4294967295u, ~4294967295u)));
    var var_1 = Struct_1(~(~_wgslsmith_mult_u32(35772u, global3.a)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, abs(global3.a), u_input.c.x, ~global3.a), vec4<u32>(arg_3.x, 18649u, _wgslsmith_div_u32(74059u, global3.a), func_3(arg_3.zzz, Struct_1(4294967295u)))) % 32u));
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 8u)];
    global2 = array<Struct_1, 24>();
    return Struct_1(0u >> (var_2.a % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(44993u, arg_2.a, 25805u), abs(abs(u_input.c.x)));
    var var_1 = 4294967295u;
    let var_2 = global4.x;
    var_1 = firstTrailingBit(~(select(~arg_2.a, func_2(-1i, false, vec3<bool>(false, true, false), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 675u)).a, true) >> (global3.a % 32u)));
    let var_3 = vec2<bool>(true, true);
    return u_input.b.xy;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_dot_vec2_i32(abs(reverseBits(min(~vec2<i32>(-2147483647i, u_input.b.x), abs(u_input.b.yz)))), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, i32(-1i) * -41591i), func_4(Struct_1(0u), func_2(-1i, true, vec3<bool>(false, true, true), u_input.a), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(6629u, u_input.c.x, 30072u, global0.a), u_input.a), 8u)])), min(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.b.x), vec2<i32>(-20969i, u_input.b.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.yx, vec2<i32>(u_input.b.x, u_input.b.x)) >> (vec2<u32>(global0.a, 0u) % vec2<u32>(32u)))));
    var var_1 = max(u_input.a.wyx, vec3<u32>(~select(reverseBits(1u), ~4294967295u, true), global0.a, global3.a));
    var var_2 = abs(~countOneBits(u_input.a));
    global3 = func_2(_wgslsmith_add_i32(1i, firstTrailingBit(var_0)) << ((~_wgslsmith_sub_u32(48864u, var_1.x) << (u_input.a.x % 32u)) % 32u), true && !(~global3.a > var_2.x), select(!vec3<bool>(true, all(vec4<bool>(false, true, false, false)), true), select(vec3<bool>(any(vec2<bool>(true, false)), all(vec4<bool>(false, true, false, false)), all(vec4<bool>(false, false, false, true))), vec3<bool>(true, true, true), false), 32793u == _wgslsmith_mult_u32(_wgslsmith_clamp_u32(27501u, var_1.x, 26296u), 0u)), u_input.a);
    var_2 = (u_input.a & (firstTrailingBit(firstLeadingBit(u_input.a)) ^ _wgslsmith_mult_vec4_u32(u_input.c << (u_input.a % vec4<u32>(32u)), max(u_input.a, u_input.a)))) ^ (~vec4<u32>(_wgslsmith_sub_u32(global0.a, global0.a), 19471u >> (global3.a % 32u), 1u, 1u) >> (~(~(u_input.a | vec4<u32>(4294967295u, 4294967295u, 0u, 42154u))) % vec4<u32>(32u)));
    return global4.x;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: f32) -> Struct_1 {
    global2 = array<Struct_1, 24>();
    global3 = arg_0;
    let var_0 = ~8624i;
    var var_1 = u_input.b.x;
    global1 = array<Struct_1, 8>();
    return Struct_1(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global4.x)))) + _wgslsmith_f_op_f32(ceil(2125f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-838f))))));
    global1 = array<Struct_1, 8>();
    global1 = array<Struct_1, 8>();
    var var_1 = global1[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, countOneBits(3127u), global0.a, ~global0.a), u_input.c)), 8u)];
    global2 = array<Struct_1, 24>();
    let var_2 = func_5(Struct_1(~(7897u >> (u_input.a.x % 32u)) | _wgslsmith_sub_u32(reverseBits(u_input.a.x), u_input.a.x << (4294967295u % 32u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -267f, 630f, _wgslsmith_f_op_f32(func_1())), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), global0.a < 1u), vec2<bool>(false, all(vec3<bool>(true, true, false))), !any(vec2<bool>(false, true))), _wgslsmith_f_op_f32(f32(-1f) * -634f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1824f), u_input.b.x, global4.yzx, global3.a, u_input.c);
}

