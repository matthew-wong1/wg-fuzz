struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(55451u, 0u, 1u, 1u), vec4<u32>(35625u, 2888u, 58656u, 10121u), vec4<u32>(4294967295u, 53330u, 4294967295u, 1u), vec4<u32>(0u, 90288u, 1u, 44773u), vec4<u32>(4294967295u, 4294967295u, 34953u, 16525u), vec4<u32>(0u, 0u, 17211u, 4294967295u), vec4<u32>(11766u, 94351u, 1u, 4294967295u), vec4<u32>(4294967295u, 101239u, 37056u, 1u));

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(1i, 41579u, 0u), Struct_1(-986i, 37076u, 4294967295u), Struct_1(-39462i, 0u, 6914u), Struct_1(2147483647i, 4294967295u, 0u), Struct_1(46680i, 0u, 85826u), Struct_1(0i, 0u, 20828u), Struct_1(-18983i, 4294967295u, 1u), Struct_1(-2363i, 4294967295u, 3862u), Struct_1(0i, 62949u, 34193u), Struct_1(28873i, 22955u, 237u), Struct_1(-3685i, 309u, 47029u), Struct_1(0i, 4294967295u, 4294967295u), Struct_1(1i, 79923u, 1u), Struct_1(32521i, 4294967295u, 4294967295u), Struct_1(-49444i, 0u, 50347u), Struct_1(16366i, 0u, 37002u), Struct_1(3111i, 56804u, 1u), Struct_1(-110i, 1769u, 4294967295u), Struct_1(16750i, 0u, 47764u), Struct_1(2147483647i, 56336u, 0u), Struct_1(17764i, 10738u, 4294967295u), Struct_1(2147483647i, 98937u, 0u), Struct_1(24452i, 0u, 51382u), Struct_1(-34838i, 3172u, 26968u), Struct_1(0i, 1044u, 0u), Struct_1(0i, 37024u, 25059u), Struct_1(-63512i, 1u, 14762u));

var<private> global3: array<vec2<f32>, 4>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> i32 {
    global2 = array<Struct_1, 27>();
    let var_0 = false;
    let var_1 = global2[_wgslsmith_index_u32(~(~(_wgslsmith_mult_u32(0u, reverseBits(u_input.a.x)) & ~19489u)), 27u)];
    let var_2 = -2147483647i;
    global1 = array<vec4<u32>, 8>();
    return -1i;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = vec3<u32>(1u, ~(~4294967295u), max(_wgslsmith_clamp_u32(35486u, _wgslsmith_add_u32(1u, arg_1.c), arg_1.c), reverseBits(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, 0u), reverseBits(arg_1.b)))));
    var var_1 = arg_1;
    let var_2 = arg_0;
    var var_3 = 839f;
    var_1 = global2[_wgslsmith_index_u32(arg_1.b, 27u)];
    return abs(u_input.a.x);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> StorageBuffer {
    var var_0 = _wgslsmith_mult_u32(arg_1.c, u_input.a.x);
    global1 = array<vec4<u32>, 8>();
    global3 = array<vec2<f32>, 4>();
    let var_1 = arg_1.a;
    var var_2 = Struct_1(~(-27817i), _wgslsmith_clamp_u32(~4294967295u, func_3(~(arg_0 ^ var_1), arg_1), 13931u), select(_wgslsmith_sub_u32(arg_1.b, arg_1.c), u_input.a.x, !(1u >= (arg_1.b & u_input.a.x))));
    return StorageBuffer(global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(var_2.b, 22294u)), ~_wgslsmith_sub_vec2_u32(u_input.a.zx, vec2<u32>(var_2.b, var_2.b)))), 4u)], abs(-vec3<i32>(-2147483647i, i32(-1i) * -2147483647i, -689i >> (arg_1.c % 32u))), _wgslsmith_mod_vec3_i32(-(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.a, var_2.a, arg_1.a), vec3<i32>(var_2.a, -12509i, arg_1.a)) ^ min(vec3<i32>(0i, -2147483647i, var_2.a), vec3<i32>(arg_0, var_1, arg_1.a))), ~_wgslsmith_add_vec3_i32(vec3<i32>(1i, var_2.a, arg_0), vec3<i32>(arg_0, 49751i, -18814i)) << (~min(u_input.a.yyx, u_input.a.wzz) % vec3<u32>(32u))), reverseBits(vec2<u32>(countOneBits(_wgslsmith_mult_u32(0u, var_2.c)), countOneBits(abs(arg_1.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_sub_i32(firstTrailingBit(~firstLeadingBit(-1i)), ~countOneBits(41827i));
    global0 = u_input.a.x;
    let var_1 = Struct_1(func_1(var_0, Struct_1(var_0, min(firstLeadingBit(u_input.a.x), 1u), 0u), _wgslsmith_sub_i32(countOneBits(7107i), var_0)), 15145u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x));
    global1 = array<vec4<u32>, 8>();
    let var_2 = !all(vec2<bool>(var_0 <= ~16825i, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)))));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-900f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1964f * _wgslsmith_f_op_f32(f32(-1f) * -618f)))), -555f));
    global3 = array<vec2<f32>, 4>();
    let x = u_input.a;
    s_output = func_2(_wgslsmith_clamp_i32(var_1.a, 2147483647i, var_1.a), var_1, 258f);
}

