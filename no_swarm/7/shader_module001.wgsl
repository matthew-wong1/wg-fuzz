struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(722f, vec3<i32>(16523i, 47512i, 0i)), Struct_1(1105f, vec3<i32>(61842i, -31261i, -1i)), Struct_1(-1000f, vec3<i32>(6867i, -55096i, -27059i)), Struct_1(-972f, vec3<i32>(-1i, i32(-2147483648), 123122i)), Struct_1(-849f, vec3<i32>(1i, -24991i, 1i)), Struct_1(-2321f, vec3<i32>(2147483647i, 23589i, 0i)), Struct_1(919f, vec3<i32>(819i, -26203i, 2147483647i)), Struct_1(-506f, vec3<i32>(13484i, -25226i, 50379i)), Struct_1(339f, vec3<i32>(-1i, i32(-2147483648), 2147483647i)), Struct_1(867f, vec3<i32>(-7908i, 0i, 8342i)), Struct_1(-1007f, vec3<i32>(15944i, 3763i, i32(-2147483648))), Struct_1(-2062f, vec3<i32>(12582i, 19999i, 5447i)), Struct_1(658f, vec3<i32>(-65717i, 2147483647i, 10455i)), Struct_1(-1298f, vec3<i32>(0i, -49408i, -42150i)), Struct_1(-469f, vec3<i32>(52330i, 1i, 2147483647i)), Struct_1(237f, vec3<i32>(i32(-2147483648), 39178i, 1i)), Struct_1(-1000f, vec3<i32>(2147483647i, -16151i, 2147483647i)), Struct_1(-2732f, vec3<i32>(-1i, -1i, 0i)), Struct_1(-2265f, vec3<i32>(5467i, -9919i, 31461i)), Struct_1(1107f, vec3<i32>(2147483647i, 15459i, 7754i)), Struct_1(-248f, vec3<i32>(-1i, -1i, 6277i)), Struct_1(560f, vec3<i32>(i32(-2147483648), 14507i, 2147483647i)), Struct_1(1624f, vec3<i32>(587i, 7573i, 1i)), Struct_1(126f, vec3<i32>(1i, 38920i, 50606i)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    let var_0 = Struct_1(894f, -vec3<i32>(_wgslsmith_dot_vec2_i32(max(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.b, -2147483647i)), min(vec2<i32>(-26486i, 50624i), vec2<i32>(u_input.b, -2147483647i))), ~(~(-3174i)), u_input.b));
    global0 = array<Struct_1, 24>();
    var var_1 = max(vec3<i32>(u_input.b, _wgslsmith_mult_i32(-1i, u_input.b), 2147483647i) & -var_0.b, var_0.b >> (max(reverseBits(firstTrailingBit(vec3<u32>(u_input.a, 28653u, 1u))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.c, 77438u), vec3<u32>(u_input.a, 20857u, 1u)) << (vec3<u32>(53902u, u_input.c, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_2 = i32(-1i) * -var_0.b.x;
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a + 1093f), _wgslsmith_f_op_f32(-var_0.a))))));
}

