struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: vec2<f32> = vec2<f32>(-1249f, -420f);

var<private> global2: array<i32, 1>;

var<private> global3: array<Struct_1, 31>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = -u_input.c.x;
    global2 = array<i32, 1>();
    global0 = array<Struct_2, 2>();
    let var_1 = Struct_4(global1.x, Struct_3(!vec4<bool>(arg_0.x, true, u_input.c.x >= global2[_wgslsmith_index_u32(2814u, 1u)], arg_0.x)), global0[_wgslsmith_index_u32(u_input.b, 2u)], global3[_wgslsmith_index_u32(1u, 31u)]);
    var var_2 = ~2147483647i;
    return 258f;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>, arg_3: vec3<i32>) -> Struct_4 {
    var var_0 = 19512u;
    let var_1 = arg_0.a.a;
    var var_2 = Struct_3(vec4<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.b.x) + global1.x) >= global1.x, true, arg_0.b.a));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-249f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_2.a.yw)))) * -156f));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.b.xxy));
    return Struct_4(-2151f, Struct_3(var_2.a), Struct_2(Struct_1(!(!var_1), arg_0.a.b), global3[_wgslsmith_index_u32(~arg_0.c.x, 31u)], countOneBits(abs(firstLeadingBit(u_input.a)))), arg_0.a);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec2<f32>) -> u32 {
    global1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(arg_1.c.a.b.zx))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-496f * 824f), _wgslsmith_f_op_f32(sign(1511f)))), _wgslsmith_f_op_f32(abs(global1.x)))))));
    var var_0 = vec4<u32>(u_input.b, u_input.a.x, ~arg_1.c.c.x, countOneBits(u_input.a.x));
    let var_1 = _wgslsmith_mult_i32(u_input.c.x, i32(-1i) * -46790i);
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1.d.b.xxw), _wgslsmith_f_op_vec3_f32(arg_1.c.a.b.wyx - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-303f, 609f, arg_2.x))))))));
    var var_3 = _wgslsmith_mult_i32(~(~_wgslsmith_mod_i32(~17763i, _wgslsmith_dot_vec2_i32(arg_0.xx, u_input.c.zy))), 12192i);
    return u_input.b;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1) -> u32 {
    global3 = array<Struct_1, 31>();
    global2 = array<i32, 1>();
    let var_0 = ~1i;
    let var_1 = global0[_wgslsmith_index_u32(arg_0.c.c.x, 2u)];
    let var_2 = i32(-1i) * -global2[_wgslsmith_index_u32(~4294967295u, 1u)];
    return func_4(vec4<i32>(var_0, 1i, _wgslsmith_dot_vec2_i32(u_input.c.xy << (vec2<u32>(66661u, var_1.c.x) % vec2<u32>(32u)), vec2<i32>(-11950i, max(u_input.c.x, global2[_wgslsmith_index_u32(48577u, 1u)]))), -u_input.c.x), func_2(arg_0.c, global1.x, min(-vec4<i32>(38776i, var_2, u_input.c.x, var_0), -_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, var_2, var_0), vec4<i32>(global2[_wgslsmith_index_u32(var_1.c.x, 1u)], 8854i, var_0, u_input.c.x))), u_input.c), arg_0.d.b.yz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, firstLeadingBit(~4444u), ~(~4294967295u), 1u) & _wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a.x, 47865u, func_1(Struct_4(global1.x, Struct_3(vec4<bool>(false, true, true, false)), global0[_wgslsmith_index_u32(u_input.b, 2u)], global3[_wgslsmith_index_u32(u_input.a.x, 31u)]), Struct_1(false, vec4<f32>(global1.x, 757f, global1.x, global1.x))), 1u), select(select(vec4<u32>(u_input.b, 0u, 41415u, u_input.d), vec4<u32>(u_input.b, u_input.b, 1u, u_input.d), false), ~vec4<u32>(u_input.b, u_input.b, u_input.d, u_input.d), func_2(Struct_2(global3[_wgslsmith_index_u32(u_input.d, 31u)], Struct_1(false, vec4<f32>(-1968f, global1.x, 1000f, global1.x)), vec2<u32>(4294967295u, 15744u)), global1.x, vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], -2288i, 13714i, global2[_wgslsmith_index_u32(63801u, 1u)]), vec3<i32>(0i, -1i, 0i)).b.a)), vec4<u32>(func_1(func_2(Struct_2(global3[_wgslsmith_index_u32(43734u, 31u)], global3[_wgslsmith_index_u32(u_input.a.x, 31u)], vec2<u32>(49226u, 65651u)), _wgslsmith_f_op_f32(-global1.x), abs(vec4<i32>(-28135i, 21079i, 1372i, 31027i)), -vec3<i32>(global2[_wgslsmith_index_u32(u_input.d, 1u)], u_input.c.x, -17636i)), global3[_wgslsmith_index_u32(reverseBits(min(u_input.d, 1u)), 31u)]), ~(~(~u_input.d)), u_input.a.x, ~u_input.a.x));
    var var_1 = _wgslsmith_clamp_vec3_i32(-(~(-u_input.c)) & -firstTrailingBit(_wgslsmith_mod_vec3_i32(u_input.c, u_input.c)), -u_input.c, _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(reverseBits(global2[_wgslsmith_index_u32(u_input.a.x, 1u)]), _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), ~0i)), select(u_input.c, vec3<i32>(2147483647i, -63435i, reverseBits(u_input.c.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))));
    let var_2 = func_2(Struct_2(global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(u_input.d, 31u)], vec2<u32>(u_input.d, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(524f, _wgslsmith_f_op_f32(global1.x - -292f)))), -(~vec4<i32>(-1i, u_input.c.x, -40875i, -2147483647i) << (_wgslsmith_mod_vec4_u32(var_0, vec4<u32>(4294967295u, var_0.x, u_input.d, 51087u)) % vec4<u32>(32u))) | reverseBits(vec4<i32>(-global2[_wgslsmith_index_u32(1854u, 1u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, 0u), 1u)], var_1.x, u_input.c.x)), vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, global2[_wgslsmith_index_u32(func_2(func_2(Struct_2(Struct_1(true, vec4<f32>(607f, global1.x, global1.x, 1603f)), global3[_wgslsmith_index_u32(20468u, 31u)], vec2<u32>(u_input.b, 42994u)), 553f, vec4<i32>(u_input.c.x, 14443i, u_input.c.x, 1i), vec3<i32>(u_input.c.x, global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(101784u, 1u)])).c, _wgslsmith_f_op_f32(step(-431f, global1.x)), vec4<i32>(u_input.c.x, 40389i, 29261i, global2[_wgslsmith_index_u32(u_input.d, 1u)]), select(vec3<i32>(-1i, var_1.x, var_1.x), u_input.c, vec3<bool>(false, false, false))).c.c.x, 1u)]), -(~1i & _wgslsmith_add_i32(var_1.x, u_input.c.x)), u_input.c.x)).b.a;
    var var_3 = 21120u;
    var_3 = _wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(~33139u, ~(~var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(616i << ((abs(var_0.x) >> (4294967295u % 32u)) % 32u), countOneBits(var_1.x)), -reverseBits(vec2<i32>(global2[_wgslsmith_index_u32(u_input.d, 1u)], i32(-1i) * -1i)));
}

