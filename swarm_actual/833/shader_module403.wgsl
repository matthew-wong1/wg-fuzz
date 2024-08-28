struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> f32 {
    global0 = array<i32, 24>();
    let var_0 = max((_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, global0[_wgslsmith_index_u32(4512u, 24u)]), vec2<i32>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(73745u, 24u)])), _wgslsmith_clamp_vec2_i32(vec2<i32>(-53i, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec2<i32>(45926i, global0[_wgslsmith_index_u32(61382u, 24u)]), vec2<i32>(69977i, global0[_wgslsmith_index_u32(98620u, 24u)]))) >> (~u_input.a.xy % vec2<u32>(32u))) & vec2<i32>(global0[_wgslsmith_index_u32(~0u, 24u)], 52386i), vec2<i32>(-10133i, ~max(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 24u)], 0i, global0[_wgslsmith_index_u32(5558u, 24u)]), vec3<i32>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), ~(-2147483647i))));
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    return _wgslsmith_f_op_f32(round(-1417f));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    var var_0 = arg_0.b.b.x;
    global0 = array<i32, 24>();
    var_0 = true;
    let var_1 = 0i;
    global0 = array<i32, 24>();
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec3<u32> {
    global0 = array<i32, 24>();
    var var_0 = arg_1.b.b;
    var var_1 = abs(-vec4<i32>(global0[_wgslsmith_index_u32(min(arg_1.b.c.x, u_input.a.x), 24u)] ^ func_2(Struct_2(839f, arg_0.b, 720f), arg_0.b.c.x).b.d, arg_0.b.d, -1i, -1i));
    return vec3<u32>(firstLeadingBit(20674u), _wgslsmith_dot_vec2_u32(~arg_0.b.c.zy, u_input.a.wx), abs(_wgslsmith_add_u32(~arg_0.b.e, select(63360u, abs(arg_0.b.c.x), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(_wgslsmith_mult_vec3_u32(u_input.a.zyx, u_input.a.yyy ^ u_input.a.yyy)) ^ _wgslsmith_clamp_vec3_u32(u_input.a.xyy, ~(~abs(vec3<u32>(13972u, u_input.a.x, u_input.a.x))), ~countOneBits(vec3<u32>(u_input.a.x, 21910u, 1u)) | ~(vec3<u32>(u_input.a.x, u_input.a.x, 1u) << (vec3<u32>(4294967295u, u_input.a.x, 22303u) % vec3<u32>(32u))));
    var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 20909u, 1u), ~u_input.a.wwx);
    global0 = array<i32, 24>();
    let var_1 = vec4<bool>(true, true, true, true);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-885f + _wgslsmith_f_op_f32(func_1())), Struct_1(reverseBits(vec2<u32>(u_input.a.x, var_0.x)) >> (_wgslsmith_clamp_vec2_u32(reverseBits(var_0.xx), var_0.xz | var_0.xx, u_input.a.wz) % vec2<u32>(32u)), var_1, ~func_3(Struct_2(-179f, Struct_1(u_input.a.wy, var_1, u_input.a.xwx, global0[_wgslsmith_index_u32(1u, 24u)], 1u), -706f), func_2(Struct_2(138f, Struct_1(u_input.a.yw, vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec3<u32>(0u, u_input.a.x, 0u), global0[_wgslsmith_index_u32(1u, 24u)], u_input.a.x), -515f), var_0.x), _wgslsmith_f_op_f32(-1361f - 1872f)), global0[_wgslsmith_index_u32(var_0.x, 24u)], firstLeadingBit(5659u)), _wgslsmith_f_op_f32(sign(-1000f)));
    let var_3 = func_2(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -756f), func_2(var_2, u_input.a.x).b, -300f), 0u).b.b;
    global0 = array<i32, 24>();
    let var_4 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(func_2(func_2(var_2, 60823u), 1u).b.e, select(1u, var_2.b.e, -1458f < var_2.c)), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(84944u, var_2.b.e), ~u_input.a.x), ~(vec2<u32>(45173u, u_input.a.x) << (vec2<u32>(0u, 0u) % vec2<u32>(32u))))), !func_2(Struct_2(_wgslsmith_div_f32(var_2.a, 699f), var_2.b, _wgslsmith_f_op_f32(-1292f + var_2.a)), 43992u).b.b, u_input.a.xyz, -2786i, max(27196u, _wgslsmith_div_u32(countOneBits(var_0.x) << (26444u % 32u), ~(~4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(func_2(func_2(Struct_2(-646f, var_2.b, var_2.c), firstTrailingBit(var_0.x)), ~(12865u & var_4.e)), func_3(Struct_2(var_2.c, Struct_1(vec2<u32>(21916u, u_input.a.x), var_2.b.b, vec3<u32>(1u, 21630u, 4294967295u), var_4.d, 18474u), -110f), Struct_2(var_2.a, func_2(Struct_2(var_2.a, Struct_1(vec2<u32>(var_0.x, 43976u), var_2.b.b, vec3<u32>(var_4.c.x, 4294967295u, var_2.b.a.x), -25811i, var_2.b.c.x), var_2.a), var_0.x).b, _wgslsmith_f_op_f32(var_2.a * var_2.c)), -486f).x).b.d, 744f);
}

