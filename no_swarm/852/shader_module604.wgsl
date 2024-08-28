struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec3<bool>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false));

var<private> global1: array<Struct_4, 8>;

var<private> global2: array<u32, 5>;

var<private> global3: array<f32, 16> = array<f32, 16>(-925f, 1000f, -1000f, -1286f, 1482f, 321f, 1000f, -708f, 663f, 427f, -2168f, 1416f, -190f, 715f, 1000f, -189f);

var<private> global4: Struct_4 = Struct_4(vec2<u32>(1u, 4939u), Struct_3(vec3<i32>(i32(-2147483648), 29382i, -27596i), vec3<u32>(28635u, 0u, 10257u), 91937u), vec3<bool>(true, false, true));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4) -> vec2<bool> {
    let var_0 = _wgslsmith_mult_i32(-(~(arg_0.b.a.x >> (~global2[_wgslsmith_index_u32(0u, 5u)] % 32u))), -2147483647i);
    let var_1 = 1u;
    global4 = Struct_4(vec2<u32>(countOneBits(_wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(1u, 5u)], ~global4.a.x)), 6882u), Struct_3(~select(~vec3<i32>(arg_2.b.a.x, 0i, global4.b.a.x), vec3<i32>(-1i, 1i, 40734i), arg_0.c), vec3<u32>(abs(~arg_2.b.b.x), 1252u, global4.b.b.x), ~_wgslsmith_sub_u32(firstLeadingBit(1563u), global4.b.b.x)), select(select(vec3<bool>(global4.c.x, any(arg_2.c), !global4.c.x), !vec3<bool>(global4.c.x, global4.c.x, arg_0.c.x), select(arg_0.c.x, true, global4.c.x)), select(select(!arg_2.c, !vec3<bool>(global4.c.x, arg_0.c.x, arg_2.c.x), true), arg_0.c, arg_2.c.x), true));
    global1 = array<Struct_4, 8>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~arg_1, 16u)]) - -920f);
    return arg_2.c.yx;
}

fn func_2() -> Struct_5 {
    let var_0 = -(~(-vec4<i32>(global4.b.a.x, u_input.a, global4.b.a.x, 29928i) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 49307i, u_input.a, -28483i), vec4<i32>(45571i, -34045i, 3809i, 2147483647i))) & vec4<i32>(2162i, _wgslsmith_dot_vec3_i32(global4.b.a << (global4.b.b % vec3<u32>(32u)), global4.b.a), ~1i, -79508i));
    let var_1 = Struct_4(select(~(~global4.b.b.zx), ~vec2<u32>(global2[_wgslsmith_index_u32(6516u, 5u)] ^ 32196u, _wgslsmith_sub_u32(global4.b.c, 8288u)), select(!func_3(global1[_wgslsmith_index_u32(global4.b.c, 8u)], global2[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 5u)], 8u)]), select(global4.c.yy, select(vec2<bool>(false, true), vec2<bool>(false, global4.c.x), global4.c.x), vec2<bool>(global4.c.x, global4.c.x)), vec2<bool>(global4.c.x, false))), Struct_3(vec3<i32>(u_input.a, i32(-1i) * -27784i, i32(-1i) * -1i), vec3<u32>(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.b.c, 5u)], 5u)], 5u)] >> (0u % 32u)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global4.a.x, 91110u), 5u)], firstLeadingBit(~4294967295u)), global4.a.x ^ ~(~0u)), !select(vec3<bool>(true, any(global4.c), global2[_wgslsmith_index_u32(0u, 5u)] > global2[_wgslsmith_index_u32(global4.a.x, 5u)]), select(!global4.c, vec3<bool>(global4.c.x, global4.c.x, global4.c.x), vec3<bool>(true, true, true)), !select(vec3<bool>(global4.c.x, false, global4.c.x), vec3<bool>(false, global4.c.x, global4.c.x), global0[_wgslsmith_index_u32(1u, 5u)])));
    global1 = array<Struct_4, 8>();
    var var_2 = u_input.a != (26232i << ((reverseBits(~var_1.a.x) ^ 24400u) % 32u));
    return Struct_5(_wgslsmith_dot_vec4_i32(~var_0, var_0 >> (_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(var_1.a.x, 13149u, 1u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, var_1.b.c, global4.b.b.x), vec4<u32>(63911u, var_1.b.b.x, 33948u, 46205u))) % vec4<u32>(32u))));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: f32, arg_3: i32) -> u32 {
    let var_0 = global4.b;
    let var_1 = ~global4.b.a.x;
    var var_2 = min(var_0.b.x, ~_wgslsmith_mult_u32(var_0.c, 34567u));
    let var_3 = vec2<u32>(~_wgslsmith_div_u32(~max(var_0.b.x, var_0.c), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.b.x, var_0.c, 4294967295u), ~vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], var_0.c, 4294967295u, global2[_wgslsmith_index_u32(7606u, 5u)]))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(var_0.c, var_0.b.x, 1u))));
    let var_4 = func_2();
    return ~var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 5>();
    let var_0 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(83472u, 16u)])))));
    let var_1 = _wgslsmith_clamp_vec3_i32(firstTrailingBit(firstTrailingBit(global4.b.a >> (vec3<u32>(global4.b.b.x, global2[_wgslsmith_index_u32(0u, 5u)], 48993u) % vec3<u32>(32u))) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(13076u, 92001u, global2[_wgslsmith_index_u32(1u, 5u)], 4294967295u), vec4<u32>(global4.b.c, 20704u, global2[_wgslsmith_index_u32(0u, 5u)], global4.a.x)), _wgslsmith_add_u32(global4.a.x, 4294967295u), _wgslsmith_dot_vec2_u32(global4.b.b.zx, vec2<u32>(global4.b.b.x, global2[_wgslsmith_index_u32(4294967295u, 5u)]))) % vec3<u32>(32u))), select(global4.b.a, ~global4.b.a, vec3<bool>(!(global4.b.a.x <= 5509i), _wgslsmith_mod_u32(4294967295u, global2[_wgslsmith_index_u32(39114u, 5u)]) < 1u, true)), global4.b.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, -1698f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-446f, global3[_wgslsmith_index_u32(106966u, 16u)])))));
    global3 = array<f32, 16>();
    var var_3 = any(!(!(!vec2<bool>(global4.c.x, true))));
    var var_4 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(~global4.a.x, 5u)], countOneBits(~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(18866u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.a.x, 5u)], 5u)]), ~global2[_wgslsmith_index_u32(global4.a.x, 5u)]), 5u)])), 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec2_i32(vec2<i32>(9306i << (1u % 32u), _wgslsmith_sub_i32(u_input.a, 6643i)), vec2<i32>(~2147483647i, var_1.x), var_1.xz), select(4294967295u, select(global4.a.x << ((global4.b.b.x ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45526u, 5u)], 5u)]) % 32u), func_1(var_2, var_0, var_2.x, -56022i) ^ func_1(var_2, -2727f, 850f, -1i), false), false), 127f);
}

