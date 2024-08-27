struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(67273u, 0u, 4294967295u);

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global2: vec4<i32> = vec4<i32>(-19208i, -343i, 6180i, i32(-2147483648));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(abs(-513f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))));
    var var_1 = Struct_1(-357f, -126f);
    var var_2 = Struct_1(-1289f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1310f) - -772f)));
    var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + var_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a)) - _wgslsmith_f_op_f32(-993f * var_2.b))))));
    var var_3 = select(global2.zyz & vec3<i32>(firstLeadingBit(global2.x), _wgslsmith_sub_i32(global2.x, -global2.x), ~(-1i) << (global0.x % 32u)), ~global2.zwy, !(!(!(!vec3<bool>(false, false, global1.x)))));
    return -global2.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<u32> {
    let var_0 = ~2147483647i;
    let var_1 = arg_0;
    var var_2 = func_3();
    let var_3 = var_0;
    let var_4 = 551f;
    return _wgslsmith_mod_vec3_u32(~vec3<u32>(global0.x << (global0.x % 32u), global0.x << ((global0.x << (47329u % 32u)) % 32u), ~global0.x), ~(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(4294967295u, global0.x, 75459u)), vec3<u32>(34536u, 1u, 113168u) >> (vec3<u32>(106701u, global0.x, 0u) % vec3<u32>(32u))) ^ ~(~vec3<u32>(global0.x, global0.x, global0.x))));
}

fn func_1() -> bool {
    global0 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(select(countOneBits(vec3<u32>(17553u, global0.x, 24832u)), func_2(Struct_1(1451f, 299f), Struct_1(-233f, 723f), Struct_1(1651f, -497f), global2.xzw), select(global1.yxy, global1.wzw, global1.zwy)), max(vec3<u32>(global0.x, global0.x, 32752u), vec3<u32>(0u, global0.x, global0.x))) ^ reverseBits(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 16241u, global0.x), vec3<u32>(4294967295u, global0.x, 66898u))), max(vec3<u32>(abs(global0.x >> (global0.x % 32u)), select(~1u, reverseBits(global0.x), true), global0.x), abs(max(~vec3<u32>(31981u, 4294967295u, 1u), ~vec3<u32>(global0.x, global0.x, global0.x)))));
    global2 = firstTrailingBit(abs(max(vec4<i32>(global2.x, global2.x, 0i, u_input.b), vec4<i32>(u_input.a, global2.x, 1i, -1i)) << (vec4<u32>(1u, global0.x, 4294967295u, 4294967295u) % vec4<u32>(32u)))) ^ abs(vec4<i32>(global2.x, ~(2147483647i & global2.x), min(-45982i, global2.x & 2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, global2.x, global2.x, global2.x), vec4<i32>(global2.x, global2.x, -10412i, 1i)), vec4<i32>(global2.x, 0i, global2.x, u_input.a))));
    global1 = !vec4<bool>(global1.x, !global1.x, true, all(!vec2<bool>(global1.x, global1.x)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!func_1()));
    global2 = _wgslsmith_mult_vec4_i32(reverseBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, -2147483647i, u_input.a, u_input.b), vec4<i32>(u_input.a, -11329i, global2.x, -23213i) << (vec4<u32>(global0.x, 24474u, global0.x, global0.x) % vec4<u32>(32u)))), vec4<i32>(u_input.b << (~global0.x % 32u), u_input.b, _wgslsmith_add_i32(-_wgslsmith_mod_i32(u_input.b, u_input.a), 1i), 776i));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(29651i, reverseBits(-global2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(49458i, global2.x, u_input.b, 2147483647i), vec4<i32>(global2.x, global2.x, global2.x, u_input.b)) | ~global2.x)), ~_wgslsmith_clamp_i32(1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-44157i, u_input.b, 0i, -10619i), vec4<i32>(u_input.b, -1i, 0i, 0i)), ~(-u_input.b), ~global2.x), abs(vec2<u32>(~(~4294967295u), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global0.x, global0.x, global0.x, 34294u)), ~vec4<u32>(global0.x, global0.x, 1u, global0.x)))), ~global2.x);
}

